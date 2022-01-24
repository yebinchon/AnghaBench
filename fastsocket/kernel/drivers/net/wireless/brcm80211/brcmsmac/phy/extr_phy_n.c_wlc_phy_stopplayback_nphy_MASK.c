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
typedef  int u16 ;
struct TYPE_2__ {int /*<<< orphan*/  phy_rev; } ;
struct brcms_phy {int nphy_bb_mult_save; int nphy_sample_play_lpf_bw_ctl_ovr; scalar_t__ phyhang_avoid; TYPE_1__ pubpi; } ;

/* Variables and functions */
 int BB_MULT_MASK ; 
 int BB_MULT_VALID_MASK ; 
 int /*<<< orphan*/  NPHY_REV7_RFCTRLOVERRIDE_ID1 ; 
 int /*<<< orphan*/  NPHY_TBL_ID_IQLOCAL ; 
 scalar_t__ NPHY_iqloCalCmdGctl_IQLO_CAL_EN ; 
 int /*<<< orphan*/  NPHY_sampleCmd_STOP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct brcms_phy*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct brcms_phy*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct brcms_phy*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct brcms_phy*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct brcms_phy*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct brcms_phy*,int /*<<< orphan*/ ,int,int,int,int*) ; 

void FUNC8(struct brcms_phy *pi)
{
	u16 playback_status;
	u16 bb_mult;

	if (pi->phyhang_avoid)
		FUNC6(pi, true);

	playback_status = FUNC4(pi, 0xc7);
	if (playback_status & 0x1)
		FUNC3(pi, 0xc3, NPHY_sampleCmd_STOP);
	else if (playback_status & 0x2)
		FUNC2(pi, 0xc2,
			    (u16) ~NPHY_iqloCalCmdGctl_IQLO_CAL_EN);

	FUNC2(pi, 0xc3, (u16) ~(0x1 << 2));

	if ((pi->nphy_bb_mult_save & BB_MULT_VALID_MASK) != 0) {

		bb_mult = pi->nphy_bb_mult_save & BB_MULT_MASK;
		FUNC7(pi, NPHY_TBL_ID_IQLOCAL, 1, 87, 16,
					 &bb_mult);

		pi->nphy_bb_mult_save = 0;
	}

	if (FUNC1(pi->pubpi.phy_rev, 7) || FUNC0(pi->pubpi.phy_rev, 8)) {
		if (pi->nphy_sample_play_lpf_bw_ctl_ovr) {
			FUNC5(
				pi,
				(0x1 << 7),
				0, 0, 1,
				NPHY_REV7_RFCTRLOVERRIDE_ID1);
			pi->nphy_sample_play_lpf_bw_ctl_ovr = false;
		}
	}

	if (pi->phyhang_avoid)
		FUNC6(pi, false);
}