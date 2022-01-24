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
struct smsc911x_data {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  HW ; 
 int /*<<< orphan*/  MAC_CSR_CMD ; 
 int MAC_CSR_CMD_CSR_BUSY_ ; 
 int /*<<< orphan*/  FUNC0 (struct smsc911x_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (struct smsc911x_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct smsc911x_data *pdata)
{
	int i;
	u32 val;

	FUNC0(pdata);

	for (i = 0; i < 40; i++) {
		val = FUNC2(pdata, MAC_CSR_CMD);
		if (!(val & MAC_CSR_CMD_CSR_BUSY_))
			return 0;
	}
	FUNC1(HW, "Timed out waiting for MAC not BUSY. "
		"MAC_CSR_CMD: 0x%08X", val);
	return -EIO;
}