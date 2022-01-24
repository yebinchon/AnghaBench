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
struct smsc9420_pdata {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DRV ; 
 int /*<<< orphan*/  E2P_CMD ; 
 int E2P_CMD_EPC_BUSY_ ; 
 int E2P_CMD_EPC_CMD_RELOAD_ ; 
 int EIO ; 
 int FUNC1 (struct smsc9420_pdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct smsc9420_pdata*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct smsc9420_pdata *pd)
{
	int timeout = 100000;

	FUNC0(!pd);

	if (FUNC1(pd, E2P_CMD) & E2P_CMD_EPC_BUSY_) {
		FUNC3(DRV, "smsc9420_eeprom_reload: Eeprom busy");
		return -EIO;
	}

	FUNC2(pd, E2P_CMD,
		(E2P_CMD_EPC_BUSY_ | E2P_CMD_EPC_CMD_RELOAD_));

	do {
		FUNC5(10);
		if (!(FUNC1(pd, E2P_CMD) & E2P_CMD_EPC_BUSY_))
			return 0;
	} while (timeout--);

	FUNC4(DRV, "smsc9420_eeprom_reload: Eeprom timed out");
	return -EIO;
}