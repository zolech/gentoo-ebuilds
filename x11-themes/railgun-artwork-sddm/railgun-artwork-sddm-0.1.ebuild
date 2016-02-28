# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5
inherit git-r3

DESCRIPTION="Quake 3 railgun style theme for SDDM"
HOMEPAGE="https://github.com/zolech/railgun-sddm-theme"
EGIT_REPO_URI="https://github.com/zolech/railgun-sddm-theme.git"

LICENSE="CCPL-Attribution-ShareAlike-3.0"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
		sys-apps/findutils
"

RDEPEND="${DEPEND}"

S="${WORKDIR}/${PN}-${PVR}"
src_install() {
	# sddm theme
	insinto /usr/share/sddm/themes
	doins -r "${S}/railgun"
}

pkg_postinst() {
	einfo "Please report bugs or glitches to"
	einfo "https://github.com/zolech/railgun-sddm-theme/issues"
}
