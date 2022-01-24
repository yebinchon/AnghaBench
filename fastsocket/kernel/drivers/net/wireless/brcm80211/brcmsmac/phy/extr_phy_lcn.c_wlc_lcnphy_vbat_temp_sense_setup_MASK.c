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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct phytbl_info {int tbl_width; int tbl_len; int tbl_offset; int /*<<< orphan*/ * tbl_ptr; int /*<<< orphan*/  tbl_id; } ;
struct brcms_phy_lcnphy {scalar_t__ lcnphy_current_index; } ;
struct TYPE_3__ {struct brcms_phy_lcnphy* pi_lcnphy; } ;
struct brcms_phy {TYPE_2__* sh; int /*<<< orphan*/  d11core; TYPE_1__ u; } ;
typedef  scalar_t__ s8 ;
struct TYPE_4__ {int /*<<< orphan*/  physhim; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCNPHY_TBL_ID_RFSEQ ; 
 int /*<<< orphan*/  LCNPHY_TX_PWR_CTRL_OFF ; 
 int MCTL_EN_MAC ; 
 int /*<<< orphan*/  OFF ; 
 int RADIO_2064_REG005 ; 
 int RADIO_2064_REG007 ; 
 int RADIO_2064_REG025 ; 
 int RADIO_2064_REG082 ; 
 int RADIO_2064_REG0FF ; 
 int RADIO_2064_REG112 ; 
 int RADIO_2064_REG11F ; 
 scalar_t__ TEMPSENSE ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  maccontrol ; 
 int /*<<< orphan*/  FUNC2 (struct brcms_phy*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct brcms_phy*,int,int,int) ; 
 int FUNC4 (struct brcms_phy*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct brcms_phy*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct brcms_phy*) ; 
 int /*<<< orphan*/ * tempsense_phy_regs ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC11 (struct brcms_phy*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct brcms_phy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct brcms_phy*,struct phytbl_info*) ; 
 int /*<<< orphan*/  FUNC14 (struct brcms_phy*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct brcms_phy*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (struct brcms_phy*,int,int) ; 

__attribute__((used)) static void FUNC17(struct brcms_phy *pi, u8 mode)
{
	bool suspend;
	u16 save_txpwrCtrlEn;
	u8 auxpga_vmidcourse, auxpga_vmidfine, auxpga_gain;
	u16 auxpga_vmid;
	struct phytbl_info tab;
	u32 val;
	u8 save_reg007, save_reg0FF, save_reg11F, save_reg005, save_reg025,
	   save_reg112;
	u16 values_to_save[14];
	s8 index;
	int i;
	struct brcms_phy_lcnphy *pi_lcn = pi->u.pi_lcnphy;
	FUNC7(999);

	save_reg007 = (u8) FUNC5(pi, RADIO_2064_REG007);
	save_reg0FF = (u8) FUNC5(pi, RADIO_2064_REG0FF);
	save_reg11F = (u8) FUNC5(pi, RADIO_2064_REG11F);
	save_reg005 = (u8) FUNC5(pi, RADIO_2064_REG005);
	save_reg025 = (u8) FUNC5(pi, RADIO_2064_REG025);
	save_reg112 = (u8) FUNC5(pi, RADIO_2064_REG112);

	for (i = 0; i < 14; i++)
		values_to_save[i] = FUNC4(pi, tempsense_phy_regs[i]);
	suspend = (0 == (FUNC1(pi->d11core, FUNC0(maccontrol)) &
			 MCTL_EN_MAC));
	if (!suspend)
		FUNC9(pi->sh->physhim);
	save_txpwrCtrlEn = FUNC5(pi, 0x4a4);

	FUNC12(pi, LCNPHY_TX_PWR_CTRL_OFF);
	index = pi_lcn->lcnphy_current_index;
	FUNC11(pi, 127);
	FUNC3(pi, RADIO_2064_REG007, 0x1, 0x1);
	FUNC3(pi, RADIO_2064_REG0FF, 0x10, 0x1 << 4);
	FUNC3(pi, RADIO_2064_REG11F, 0x4, 0x1 << 2);
	FUNC2(pi, 0x503, (0x1 << 0), (0) << 0);

	FUNC2(pi, 0x503, (0x1 << 2), (0) << 2);

	FUNC2(pi, 0x4a4, (0x1 << 14), (0) << 14);

	FUNC2(pi, 0x4a4, (0x1 << 15), (0) << 15);

	FUNC2(pi, 0x4d0, (0x1 << 5), (0) << 5);

	FUNC2(pi, 0x4a5, (0xff << 0), (255) << 0);

	FUNC2(pi, 0x4a5, (0x7 << 12), (5) << 12);

	FUNC2(pi, 0x4a5, (0x7 << 8), (0) << 8);

	FUNC2(pi, 0x40d, (0xff << 0), (64) << 0);

	FUNC2(pi, 0x40d, (0x7 << 8), (6) << 8);

	FUNC2(pi, 0x4a2, (0xff << 0), (64) << 0);

	FUNC2(pi, 0x4a2, (0x7 << 8), (6) << 8);

	FUNC2(pi, 0x4d9, (0x7 << 4), (2) << 4);

	FUNC2(pi, 0x4d9, (0x7 << 8), (3) << 8);

	FUNC2(pi, 0x4d9, (0x7 << 12), (1) << 12);

	FUNC2(pi, 0x4da, (0x1 << 12), (0) << 12);

	FUNC2(pi, 0x4da, (0x1 << 13), (1) << 13);

	FUNC2(pi, 0x4a6, (0x1 << 15), (1) << 15);

	FUNC16(pi, RADIO_2064_REG025, 0xC);

	FUNC3(pi, RADIO_2064_REG005, 0x8, 0x1 << 3);

	FUNC2(pi, 0x938, (0x1 << 2), (1) << 2);

	FUNC2(pi, 0x939, (0x1 << 2), (1) << 2);

	FUNC2(pi, 0x4a4, (0x1 << 12), (1) << 12);

	val = FUNC10(pi);
	tab.tbl_id = LCNPHY_TBL_ID_RFSEQ;
	tab.tbl_width = 16;
	tab.tbl_len = 1;
	tab.tbl_ptr = &val;
	tab.tbl_offset = 6;
	FUNC13(pi, &tab);
	if (mode == TEMPSENSE) {
		FUNC2(pi, 0x4d7, (0x1 << 3), (1) << 3);

		FUNC2(pi, 0x4d7, (0x7 << 12), (1) << 12);

		auxpga_vmidcourse = 8;
		auxpga_vmidfine = 0x4;
		auxpga_gain = 2;
		FUNC3(pi, RADIO_2064_REG082, 0x20, 1 << 5);
	} else {
		FUNC2(pi, 0x4d7, (0x1 << 3), (1) << 3);

		FUNC2(pi, 0x4d7, (0x7 << 12), (3) << 12);

		auxpga_vmidcourse = 7;
		auxpga_vmidfine = 0xa;
		auxpga_gain = 2;
	}
	auxpga_vmid =
		(u16) ((2 << 8) | (auxpga_vmidcourse << 4) | auxpga_vmidfine);
	FUNC2(pi, 0x4d8, (0x1 << 0), (1) << 0);

	FUNC2(pi, 0x4d8, (0x3ff << 2), (auxpga_vmid) << 2);

	FUNC2(pi, 0x4d8, (0x1 << 1), (1) << 1);

	FUNC2(pi, 0x4d8, (0x7 << 12), (auxpga_gain) << 12);

	FUNC2(pi, 0x4d0, (0x1 << 5), (1) << 5);

	FUNC16(pi, RADIO_2064_REG112, 0x6);

	FUNC14(pi, true, OFF);
	if (!FUNC6(pi))
		FUNC7(10);

	FUNC16(pi, RADIO_2064_REG007, (u16) save_reg007);
	FUNC16(pi, RADIO_2064_REG0FF, (u16) save_reg0FF);
	FUNC16(pi, RADIO_2064_REG11F, (u16) save_reg11F);
	FUNC16(pi, RADIO_2064_REG005, (u16) save_reg005);
	FUNC16(pi, RADIO_2064_REG025, (u16) save_reg025);
	FUNC16(pi, RADIO_2064_REG112, (u16) save_reg112);
	for (i = 0; i < 14; i++)
		FUNC15(pi, tempsense_phy_regs[i], values_to_save[i]);
	FUNC11(pi, (int)index);

	FUNC16(pi, 0x4a4, save_txpwrCtrlEn);
	if (!suspend)
		FUNC8(pi->sh->physhim);
	FUNC7(999);
}