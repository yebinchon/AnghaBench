#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
typedef  int u16 ;
struct phytbl_info {int tbl_width; int tbl_len; int* tbl_ptr; int tbl_offset; int /*<<< orphan*/  tbl_id; } ;
struct brcms_phy {int dummy; } ;
typedef  int s8 ;

/* Variables and functions */
 int /*<<< orphan*/  LCNPHY_TBL_ID_TXPWRCTL ; 
 int LCNPHY_TX_PWR_CTRL_RATE_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (struct brcms_phy*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct brcms_phy*,int,int) ; 
 scalar_t__ FUNC2 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC3 (struct brcms_phy*,struct phytbl_info*) ; 

__attribute__((used)) static void FUNC4(struct brcms_phy *pi, s8 index)
{
	u32 cck_offset[4] = { 22, 22, 22, 22 };
	u32 ofdm_offset, reg_offset_cck;
	int i;
	u16 index2;
	struct phytbl_info tab;

	if (FUNC2(pi))
		return;

	FUNC0(pi, 0x4a4, (0x1 << 14), (0x1) << 14);

	FUNC0(pi, 0x4a4, (0x1 << 14), (0x0) << 14);

	FUNC1(pi, 0x6da, 0x0040);

	reg_offset_cck = 0;
	for (i = 0; i < 4; i++)
		cck_offset[i] -= reg_offset_cck;
	tab.tbl_id = LCNPHY_TBL_ID_TXPWRCTL;
	tab.tbl_width = 32;
	tab.tbl_len = 4;
	tab.tbl_ptr = cck_offset;
	tab.tbl_offset = LCNPHY_TX_PWR_CTRL_RATE_OFFSET;
	FUNC3(pi, &tab);
	ofdm_offset = 0;
	tab.tbl_len = 1;
	tab.tbl_ptr = &ofdm_offset;
	for (i = 836; i < 862; i++) {
		tab.tbl_offset = i;
		FUNC3(pi, &tab);
	}

	FUNC0(pi, 0x4a4, (0x1 << 15), (0x1) << 15);

	FUNC0(pi, 0x4a4, (0x1 << 14), (0x1) << 14);

	FUNC0(pi, 0x4a4, (0x1 << 13), (0x1) << 13);

	FUNC0(pi, 0x4b0, (0x1 << 7), (0) << 7);

	FUNC0(pi, 0x43b, (0x1 << 6), (0) << 6);

	FUNC0(pi, 0x4a9, (0x1 << 15), (1) << 15);

	index2 = (u16) (index * 2);
	FUNC0(pi, 0x4a9, (0x1ff << 0), (index2) << 0);

	FUNC0(pi, 0x6a3, (0x1 << 4), (0) << 4);

}