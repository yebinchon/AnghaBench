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
struct smsc9420_pdata {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  E2P_CMD ; 
 int E2P_CMD_EPC_BUSY_ ; 
 int E2P_CMD_EPC_TIMEOUT_ ; 
 int EAGAIN ; 
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  HW ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct smsc9420_pdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct smsc9420_pdata*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC6(struct smsc9420_pdata *pd, u32 op)
{
	int timeout = 100;
	u32 e2cmd;

	FUNC3(HW, "op 0x%08x", op);
	if (FUNC1(pd, E2P_CMD) & E2P_CMD_EPC_BUSY_) {
		FUNC5(HW, "Busy at start");
		return -EBUSY;
	}

	e2cmd = op | E2P_CMD_EPC_BUSY_;
	FUNC2(pd, E2P_CMD, e2cmd);

	do {
		FUNC0(1);
		e2cmd = FUNC1(pd, E2P_CMD);
	} while ((e2cmd & E2P_CMD_EPC_BUSY_) && (--timeout));

	if (!timeout) {
		FUNC4(HW, "TIMED OUT");
		return -EAGAIN;
	}

	if (e2cmd & E2P_CMD_EPC_TIMEOUT_) {
		FUNC4(HW, "Error occured during eeprom operation");
		return -EINVAL;
	}

	return 0;
}