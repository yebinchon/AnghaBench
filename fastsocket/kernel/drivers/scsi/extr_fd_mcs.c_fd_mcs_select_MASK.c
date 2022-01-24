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
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int PARITY_MASK ; 
 int /*<<< orphan*/  SCSI_Cntl_port ; 
 int /*<<< orphan*/  SCSI_Data_NoACK_port ; 
 int /*<<< orphan*/  SCSI_Status_port ; 
 int /*<<< orphan*/  TMC_Cntl_port ; 
 int adapter_mask ; 
 int /*<<< orphan*/  FUNC0 (struct Scsi_Host*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct Scsi_Host *shpnt, int target)
{
	int status;
	unsigned long timeout;

	FUNC2(0x82, SCSI_Cntl_port);	/* Bus Enable + Select */
	FUNC2(adapter_mask | (1 << target), SCSI_Data_NoACK_port);

	/* Stop arbitration and enable parity */
	FUNC2(PARITY_MASK, TMC_Cntl_port);

	timeout = 350;		/* 350mS -- because of timeouts
				   (was 250mS) */

	do {
		status = FUNC1(SCSI_Status_port);	/* Read adapter status */
		if (status & 1) {	/* Busy asserted */
			/* Enable SCSI Bus (on error, should make bus idle with 0) */
			FUNC2(0x80, SCSI_Cntl_port);
			return 0;
		}
		FUNC4(1000);	/* wait one msec */
	} while (--timeout);

	/* Make bus idle */
	FUNC0(shpnt);
#if EVERY_ACCESS
	if (!target)
		printk("Selection failed\n");
#endif
#if ERRORS_ONLY
	if (!target) {
		static int flag = 0;

		if (!flag)	/* Skip first failure for all chips. */
			++flag;
		else
			printk("fd_mcs: Selection failed\n");
	}
#endif
	return 1;
}