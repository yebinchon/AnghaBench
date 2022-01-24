#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  void* u8 ;
struct TYPE_3__ {int /*<<< orphan*/  phy_rev; } ;
struct brcms_phy {TYPE_2__* nphy_pwrctrl_info; TYPE_1__ pubpi; } ;
typedef  int s32 ;
typedef  scalar_t__ int_val ;
struct TYPE_4__ {void* idle_tssi_5g; void* idle_tssi_2g; } ;

/* Variables and functions */
 int /*<<< orphan*/  NPHY_REV7_RFCTRLOVERRIDE_ID0 ; 
 scalar_t__ NPHY_RSSI_SEL_TSSI_2G ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 size_t PHY_CORE_0 ; 
 size_t PHY_CORE_1 ; 
 scalar_t__ FUNC1 (struct brcms_phy*) ; 
 scalar_t__ FUNC2 (struct brcms_phy*) ; 
 scalar_t__ FUNC3 (struct brcms_phy*) ; 
 int /*<<< orphan*/  RADIO_MIMO_CORESEL_OFF ; 
 scalar_t__ FUNC4 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct brcms_phy*) ; 
 int FUNC7 (struct brcms_phy*,void*,int*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct brcms_phy*,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct brcms_phy*,int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct brcms_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC12 (struct brcms_phy*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC13(struct brcms_phy *pi)
{
	s32 rssi_buf[4];
	s32 int_val;

	if (FUNC4(pi) || FUNC3(pi) || FUNC2(pi))

		return;

	if (FUNC1(pi))
		FUNC6(pi);

	if (FUNC0(pi->pubpi.phy_rev, 7))
		FUNC9(pi, (0x1 << 12),
						  0, 0x3, 0,
						  NPHY_REV7_RFCTRLOVERRIDE_ID0);
	else if (FUNC0(pi->pubpi.phy_rev, 3))
		FUNC8(pi, (0x1 << 13), 0, 3, 0);

	FUNC11(pi);

	FUNC12(pi, 4000, 0, 0, 0, false);

	FUNC5(20);
	int_val =
		FUNC7(pi, (u8) NPHY_RSSI_SEL_TSSI_2G, rssi_buf,
				       1);
	FUNC11(pi);
	FUNC10(pi, RADIO_MIMO_CORESEL_OFF, 0);

	if (FUNC0(pi->pubpi.phy_rev, 7))
		FUNC9(pi, (0x1 << 12),
						  0, 0x3, 1,
						  NPHY_REV7_RFCTRLOVERRIDE_ID0);
	else if (FUNC0(pi->pubpi.phy_rev, 3))
		FUNC8(pi, (0x1 << 13), 0, 3, 1);

	if (FUNC0(pi->pubpi.phy_rev, 3)) {

		pi->nphy_pwrctrl_info[PHY_CORE_0].idle_tssi_2g =
			(u8) ((int_val >> 24) & 0xff);
		pi->nphy_pwrctrl_info[PHY_CORE_0].idle_tssi_5g =
			(u8) ((int_val >> 24) & 0xff);

		pi->nphy_pwrctrl_info[PHY_CORE_1].idle_tssi_2g =
			(u8) ((int_val >> 8) & 0xff);
		pi->nphy_pwrctrl_info[PHY_CORE_1].idle_tssi_5g =
			(u8) ((int_val >> 8) & 0xff);
	} else {
		pi->nphy_pwrctrl_info[PHY_CORE_0].idle_tssi_2g =
			(u8) ((int_val >> 24) & 0xff);

		pi->nphy_pwrctrl_info[PHY_CORE_1].idle_tssi_2g =
			(u8) ((int_val >> 8) & 0xff);

		pi->nphy_pwrctrl_info[PHY_CORE_0].idle_tssi_5g =
			(u8) ((int_val >> 16) & 0xff);
		pi->nphy_pwrctrl_info[PHY_CORE_1].idle_tssi_5g =
			(u8) ((int_val) & 0xff);
	}

}