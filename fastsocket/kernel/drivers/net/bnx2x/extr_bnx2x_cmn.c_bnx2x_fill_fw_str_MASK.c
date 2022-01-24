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
typedef  char u8 ;
struct TYPE_2__ {int bc_ver; } ;
struct bnx2x {TYPE_1__ common; int /*<<< orphan*/  fw_ver; int /*<<< orphan*/  link_params; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bnx2x*) ; 
 int PHY_FW_VER_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int,int,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,size_t) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(struct bnx2x *bp, char *buf, size_t buf_len)
{
	if (FUNC0(bp)) {
		u8 phy_fw_ver[PHY_FW_VER_LEN];

		phy_fw_ver[0] = '\0';
		FUNC1(&bp->link_params,
					     phy_fw_ver, PHY_FW_VER_LEN);
		FUNC4(buf, bp->fw_ver, buf_len);
		FUNC3(buf + FUNC5(bp->fw_ver), 32 - FUNC5(bp->fw_ver),
			 "bc %d.%d.%d%s%s",
			 (bp->common.bc_ver & 0xff0000) >> 16,
			 (bp->common.bc_ver & 0xff00) >> 8,
			 (bp->common.bc_ver & 0xff),
			 ((phy_fw_ver[0] != '\0') ? " phy " : ""), phy_fw_ver);
	} else {
		FUNC2(bp, buf, buf_len);
	}
}