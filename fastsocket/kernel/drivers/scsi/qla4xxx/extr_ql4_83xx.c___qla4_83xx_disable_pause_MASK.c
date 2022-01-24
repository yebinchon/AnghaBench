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
struct scsi_qla_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INFO ; 
 scalar_t__ QLA83XX_PORT0_RXB_PAUSE_THRS ; 
 scalar_t__ QLA83XX_PORT0_RXB_TC_MAX_CELL ; 
 scalar_t__ QLA83XX_PORT1_RXB_PAUSE_THRS ; 
 scalar_t__ QLA83XX_PORT1_RXB_TC_MAX_CELL ; 
 scalar_t__ QLA83XX_PORT2_IFB_PAUSE_THRS ; 
 scalar_t__ QLA83XX_PORT3_IFB_PAUSE_THRS ; 
 int /*<<< orphan*/  QLA83XX_SET_PAUSE_VAL ; 
 int /*<<< orphan*/  QLA83XX_SET_TC_MAX_CELL_VAL ; 
 scalar_t__ QLA83XX_SRE_SHIM_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct scsi_qla_host*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_qla_host*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct scsi_qla_host *ha)
{
	int i;

	/* set SRE-Shim Control Register */
	FUNC1(ha, QLA83XX_SRE_SHIM_CONTROL,
				  QLA83XX_SET_PAUSE_VAL);

	for (i = 0; i < 8; i++) {
		/* Port 0 Rx Buffer Pause Threshold Registers. */
		FUNC1(ha,
				      QLA83XX_PORT0_RXB_PAUSE_THRS + (i * 0x4),
				      QLA83XX_SET_PAUSE_VAL);
		/* Port 1 Rx Buffer Pause Threshold Registers. */
		FUNC1(ha,
				      QLA83XX_PORT1_RXB_PAUSE_THRS + (i * 0x4),
				      QLA83XX_SET_PAUSE_VAL);
	}

	for (i = 0; i < 4; i++) {
		/* Port 0 RxB Traffic Class Max Cell Registers. */
		FUNC1(ha,
				     QLA83XX_PORT0_RXB_TC_MAX_CELL + (i * 0x4),
				     QLA83XX_SET_TC_MAX_CELL_VAL);
		/* Port 1 RxB Traffic Class Max Cell Registers. */
		FUNC1(ha,
				     QLA83XX_PORT1_RXB_TC_MAX_CELL + (i * 0x4),
				     QLA83XX_SET_TC_MAX_CELL_VAL);
	}

	FUNC1(ha, QLA83XX_PORT2_IFB_PAUSE_THRS,
				  QLA83XX_SET_PAUSE_VAL);
	FUNC1(ha, QLA83XX_PORT3_IFB_PAUSE_THRS,
				  QLA83XX_SET_PAUSE_VAL);

	FUNC0(KERN_INFO, ha, "Disabled pause frames successfully.\n");
}