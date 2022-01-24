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
typedef  int u8 ;
typedef  int u32 ;
struct smsc9420_pdata {int dummy; } ;

/* Variables and functions */
 int E2P_CMD_EPC_CMD_ERASE_ ; 
 int E2P_CMD_EPC_CMD_WRITE_ ; 
 int /*<<< orphan*/  E2P_DATA ; 
 int /*<<< orphan*/  HW ; 
 int FUNC0 (struct smsc9420_pdata*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct smsc9420_pdata*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int) ; 

__attribute__((used)) static int FUNC3(struct smsc9420_pdata *pd,
					  u8 address, u8 data)
{
	u32 op = E2P_CMD_EPC_CMD_ERASE_ | address;
	int ret;

	FUNC2(HW, "address 0x%x, data 0x%x", address, data);
	ret = FUNC0(pd, op);

	if (!ret) {
		op = E2P_CMD_EPC_CMD_WRITE_ | address;
		FUNC1(pd, E2P_DATA, (u32)data);
		ret = FUNC0(pd, op);
	}

	return ret;
}