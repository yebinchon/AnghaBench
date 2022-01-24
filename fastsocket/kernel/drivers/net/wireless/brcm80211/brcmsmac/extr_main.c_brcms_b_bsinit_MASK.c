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
typedef  int /*<<< orphan*/  u16 ;
struct brcms_hardware {int shortslot; TYPE_1__* band; int /*<<< orphan*/  unit; int /*<<< orphan*/  d11core; } ;
struct brcms_c_info {struct brcms_hardware* hw; } ;
struct TYPE_2__ {scalar_t__ bandtype; scalar_t__ phyrev; scalar_t__ phytype; int /*<<< orphan*/  CWmax; int /*<<< orphan*/  CWmin; int /*<<< orphan*/  pi; int /*<<< orphan*/  bandunit; } ;

/* Variables and functions */
 scalar_t__ BRCM_BAND_5G ; 
 int /*<<< orphan*/  M_PHYTYPE ; 
 int /*<<< orphan*/  M_PHYVER ; 
 int /*<<< orphan*/  FUNC0 (struct brcms_hardware*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct brcms_hardware*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct brcms_hardware*) ; 
 int /*<<< orphan*/  FUNC3 (struct brcms_hardware*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct brcms_hardware*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct brcms_hardware*) ; 
 int /*<<< orphan*/  FUNC6 (struct brcms_hardware*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct brcms_hardware*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct brcms_c_info *wlc, u16 chanspec)
{
	struct brcms_hardware *wlc_hw = wlc->hw;

	FUNC7(wlc_hw->d11core, "wl%d: bandunit %d\n", wlc_hw->unit,
			   wlc_hw->band->bandunit);

	FUNC5(wlc_hw);

	FUNC9(wlc_hw->band->pi, chanspec);

	FUNC6(wlc_hw);

	/*
	 * cwmin is band-specific, update hardware
	 * with value for current band
	 */
	FUNC1(wlc_hw, wlc_hw->band->CWmin);
	FUNC0(wlc_hw, wlc_hw->band->CWmax);

	FUNC3(wlc_hw,
				   wlc_hw->band->bandtype == BRCM_BAND_5G ?
				   true : wlc_hw->shortslot);

	/* write phytype and phyvers */
	FUNC4(wlc_hw, M_PHYTYPE, (u16) wlc_hw->band->phytype);
	FUNC4(wlc_hw, M_PHYVER, (u16) wlc_hw->band->phyrev);

	/*
	 * initialize the txphyctl1 rate table since
	 * shmem is shared between bands
	 */
	FUNC8(wlc_hw);

	FUNC2(wlc_hw);
}