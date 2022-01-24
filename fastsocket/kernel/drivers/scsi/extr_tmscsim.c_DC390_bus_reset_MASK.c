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
typedef  int u8 ;
struct scsi_cmnd {TYPE_2__* device; } ;
struct dc390_acb {size_t AdapterIndex; int /*<<< orphan*/  ACBFlag; int /*<<< orphan*/ * pActiveDCB; scalar_t__ last_reset; } ;
struct TYPE_4__ {TYPE_1__* host; } ;
struct TYPE_3__ {int /*<<< orphan*/  host_lock; scalar_t__ hostdata; } ;

/* Variables and functions */
 int CLEAR_FIFO_CMD ; 
 int /*<<< orphan*/  CtrlReg1 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int DIS_INT_ON_SCSI_RST ; 
 size_t EE_DELAY ; 
 int HZ ; 
 int /*<<< orphan*/  INT_Status ; 
 int /*<<< orphan*/  RESET_DEV ; 
 int SUCCESS ; 
 int /*<<< orphan*/  ScsiCmd ; 
 int /*<<< orphan*/  FUNC2 (struct dc390_acb*,struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC3 (struct dc390_acb*) ; 
 int /*<<< orphan*/  FUNC4 (struct dc390_acb*) ; 
 int** dc390_eepromBuf ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8 (struct scsi_cmnd *cmd)
{
	struct dc390_acb*    pACB = (struct dc390_acb*) cmd->device->host->hostdata;
	u8   bval;

	FUNC6(cmd->device->host->host_lock);

	bval = FUNC0(CtrlReg1) | DIS_INT_ON_SCSI_RST;
	FUNC1(CtrlReg1, bval);	/* disable IRQ on bus reset */

	pACB->ACBFlag |= RESET_DEV;
	FUNC4(pACB);

	FUNC3(pACB);
	FUNC5(1);
	pACB->last_reset = jiffies + 3*HZ/2
		+ HZ * dc390_eepromBuf[pACB->AdapterIndex][EE_DELAY];

	FUNC1(ScsiCmd, CLEAR_FIFO_CMD);
	FUNC0(INT_Status);		/* Reset Pending INT */

	FUNC2(pACB, cmd);

	pACB->pActiveDCB = NULL;
	pACB->ACBFlag = 0;

	bval = FUNC0(CtrlReg1) & ~DIS_INT_ON_SCSI_RST;
	FUNC1(CtrlReg1, bval);	/* re-enable interrupt */

	FUNC7(cmd->device->host->host_lock);

	return SUCCESS;
}