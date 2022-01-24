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
typedef  int u32 ;
struct phytbl_info {int tbl_width; int* tbl_ptr; int tbl_len; int tbl_offset; int /*<<< orphan*/  tbl_id; } ;
struct TYPE_2__ {int /*<<< orphan*/  phy_rev; } ;
struct brcms_phy {TYPE_1__ pubpi; int /*<<< orphan*/  radio_chanspec; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCNPHY_TBL_ID_RFSEQ ; 
 int /*<<< orphan*/  LCNPHY_TBL_ID_TXPWRCTL ; 
 int /*<<< orphan*/  LCNPHY_TSSI_EXT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RADIO_2064_REG005 ; 
 int /*<<< orphan*/  RADIO_2064_REG025 ; 
 int /*<<< orphan*/  RADIO_2064_REG028 ; 
 int /*<<< orphan*/  RADIO_2064_REG03A ; 
 int /*<<< orphan*/  RADIO_2064_REG086 ; 
 int /*<<< orphan*/  RADIO_2064_REG11A ; 
 int /*<<< orphan*/  FUNC2 (struct brcms_phy*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct brcms_phy*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC5 (struct brcms_phy*) ; 
 int FUNC6 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC7 (struct brcms_phy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC9 (struct brcms_phy*,struct phytbl_info*) ; 
 int /*<<< orphan*/  FUNC10 (struct brcms_phy*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC11(struct brcms_phy *pi)
{
	struct phytbl_info tab;
	u32 rfseq, ind;

	tab.tbl_id = LCNPHY_TBL_ID_TXPWRCTL;
	tab.tbl_width = 32;
	tab.tbl_ptr = &ind;
	tab.tbl_len = 1;
	tab.tbl_offset = 0;
	for (ind = 0; ind < 128; ind++) {
		FUNC9(pi, &tab);
		tab.tbl_offset++;
	}
	tab.tbl_offset = 704;
	for (ind = 0; ind < 128; ind++) {
		FUNC9(pi, &tab);
		tab.tbl_offset++;
	}
	FUNC2(pi, 0x503, (0x1 << 0), (0) << 0);

	FUNC2(pi, 0x503, (0x1 << 2), (0) << 2);

	FUNC2(pi, 0x503, (0x1 << 4), (1) << 4);

	FUNC7(pi, LCNPHY_TSSI_EXT);
	FUNC2(pi, 0x4a4, (0x1 << 14), (0) << 14);

	FUNC2(pi, 0x4a4, (0x1 << 15), (1) << 15);

	FUNC2(pi, 0x4d0, (0x1 << 5), (0) << 5);

	FUNC2(pi, 0x4a4, (0x1ff << 0), (0) << 0);

	FUNC2(pi, 0x4a5, (0xff << 0), (255) << 0);

	FUNC2(pi, 0x4a5, (0x7 << 12), (5) << 12);

	FUNC2(pi, 0x4a5, (0x7 << 8), (0) << 8);

	FUNC2(pi, 0x40d, (0xff << 0), (64) << 0);

	FUNC2(pi, 0x40d, (0x7 << 8), (4) << 8);

	FUNC2(pi, 0x4a2, (0xff << 0), (64) << 0);

	FUNC2(pi, 0x4a2, (0x7 << 8), (4) << 8);

	FUNC2(pi, 0x4d0, (0x1ff << 6), (0) << 6);

	FUNC2(pi, 0x4a8, (0xff << 0), (0x1) << 0);

	FUNC4(pi);

	FUNC2(pi, 0x4a6, (0x1 << 15), (1) << 15);

	FUNC2(pi, 0x4a6, (0x1ff << 0), (0xff) << 0);

	FUNC2(pi, 0x49a, (0x1ff << 0), (0xff) << 0);

	if (FUNC1(pi->pubpi.phy_rev, 2)) {
		FUNC3(pi, RADIO_2064_REG028, 0xf, 0xe);
		FUNC3(pi, RADIO_2064_REG086, 0x4, 0x4);
	} else {
		FUNC3(pi, RADIO_2064_REG03A, 0x1, 1);
		FUNC3(pi, RADIO_2064_REG11A, 0x8, 1 << 3);
	}

	FUNC10(pi, RADIO_2064_REG025, 0xc);

	if (FUNC1(pi->pubpi.phy_rev, 2)) {
		FUNC3(pi, RADIO_2064_REG03A, 0x1, 1);
	} else {
		if (FUNC0(pi->radio_chanspec))
			FUNC3(pi, RADIO_2064_REG03A, 0x2, 1 << 1);
		else
			FUNC3(pi, RADIO_2064_REG03A, 0x2, 0 << 1);
	}

	if (FUNC1(pi->pubpi.phy_rev, 2))
		FUNC3(pi, RADIO_2064_REG03A, 0x2, 1 << 1);
	else
		FUNC3(pi, RADIO_2064_REG03A, 0x4, 1 << 2);

	FUNC3(pi, RADIO_2064_REG11A, 0x1, 1 << 0);

	FUNC3(pi, RADIO_2064_REG005, 0x8, 1 << 3);

	if (!FUNC8(pi))
		FUNC2(pi, 0x4d7,
			    (0x1 << 3) | (0x7 << 12), 0 << 3 | 2 << 12);

	rfseq = FUNC6(pi);
	tab.tbl_id = LCNPHY_TBL_ID_RFSEQ;
	tab.tbl_width = 16;
	tab.tbl_ptr = &rfseq;
	tab.tbl_len = 1;
	tab.tbl_offset = 6;
	FUNC9(pi, &tab);

	FUNC2(pi, 0x938, (0x1 << 2), (1) << 2);

	FUNC2(pi, 0x939, (0x1 << 2), (1) << 2);

	FUNC2(pi, 0x4a4, (0x1 << 12), (1) << 12);

	FUNC2(pi, 0x4d7, (0x1 << 2), (1) << 2);

	FUNC2(pi, 0x4d7, (0xf << 8), (0) << 8);

	FUNC5(pi);
}