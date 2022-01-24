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
typedef  int /*<<< orphan*/  u32 ;
struct phytbl_info {int tbl_width; int tbl_len; int /*<<< orphan*/  tbl_offset; int /*<<< orphan*/ * tbl_ptr; int /*<<< orphan*/  tbl_id; } ;
struct brcms_phy {int dummy; } ;
typedef  int /*<<< orphan*/  data_buf ;

/* Variables and functions */
 int /*<<< orphan*/  LCNPHY_TBL_ID_TXPWRCTL ; 
 int /*<<< orphan*/  LCNPHY_TX_PWR_CTRL_MAC_OFFSET ; 
 int /*<<< orphan*/  LCNPHY_TX_PWR_CTRL_RATE_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC2 (struct brcms_phy*,struct phytbl_info*) ; 

__attribute__((used)) static void FUNC3(struct brcms_phy *pi)
{
	u32 data_buf[64];
	struct phytbl_info tab;

	FUNC0(data_buf, 0, sizeof(data_buf));

	tab.tbl_id = LCNPHY_TBL_ID_TXPWRCTL;
	tab.tbl_width = 32;
	tab.tbl_ptr = data_buf;

	if (!FUNC1(pi)) {

		tab.tbl_len = 30;
		tab.tbl_offset = LCNPHY_TX_PWR_CTRL_RATE_OFFSET;
		FUNC2(pi, &tab);
	}

	tab.tbl_len = 64;
	tab.tbl_offset = LCNPHY_TX_PWR_CTRL_MAC_OFFSET;
	FUNC2(pi, &tab);
}