#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ssb_sprom {int boardflags_lo; int boardflags_hi; } ;
struct b43_wldev {int /*<<< orphan*/  wl; TYPE_1__* dev; } ;
struct TYPE_2__ {struct ssb_sprom* bus_sprom; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int B43_BFH_FEM_BT ; 
 int B43_BFL_FEM ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ IEEE80211_BAND_2GHZ ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  b43_lcntab_sw_ctl_4313_epa_rev0 ; 
 int /*<<< orphan*/  b43_lcntab_tx_gain_tbl_2ghz_ext_pa_rev0 ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC5 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC6 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC8 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 

void FUNC10(struct b43_wldev *dev)
{
	struct ssb_sprom *sprom = dev->dev->bus_sprom;

	FUNC8(dev);

	if (FUNC2(dev->wl) == IEEE80211_BAND_2GHZ) {
		if (sprom->boardflags_lo & B43_BFL_FEM)
			FUNC6(dev,
				b43_lcntab_tx_gain_tbl_2ghz_ext_pa_rev0);
		else
			FUNC9(dev->wl,
			       "TX gain table unknown for this card\n");
	}

	if (sprom->boardflags_lo & B43_BFL_FEM &&
	    !(sprom->boardflags_hi & B43_BFH_FEM_BT))
		FUNC3(dev, FUNC1(0xf, 0),
			FUNC0(b43_lcntab_sw_ctl_4313_epa_rev0),
			b43_lcntab_sw_ctl_4313_epa_rev0);
	else
		FUNC9(dev->wl, "SW ctl table is unknown for this card\n");

	FUNC5(dev);
	FUNC7(dev);
	FUNC4(dev);
}