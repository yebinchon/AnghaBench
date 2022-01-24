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
struct ata_port {int pflags; int /*<<< orphan*/  scsi_host; int /*<<< orphan*/  lock; int /*<<< orphan*/  eh_wait_q; } ;

/* Variables and functions */
 int ATA_PFLAG_EH_IN_PROGRESS ; 
 int ATA_PFLAG_EH_PENDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC1 (struct ata_port*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  wait ; 

void FUNC8(struct ata_port *ap)
{
	unsigned long flags;
	FUNC0(wait);

 retry:
	FUNC6(ap->lock, flags);

	while (ap->pflags & (ATA_PFLAG_EH_PENDING | ATA_PFLAG_EH_IN_PROGRESS)) {
		FUNC3(&ap->eh_wait_q, &wait, TASK_UNINTERRUPTIBLE);
		FUNC7(ap->lock, flags);
		FUNC4();
		FUNC6(ap->lock, flags);
	}
	FUNC2(&ap->eh_wait_q, &wait);

	FUNC7(ap->lock, flags);

	/* make sure SCSI EH is complete */
	if (FUNC5(ap->scsi_host)) {
		FUNC1(ap, 10);
		goto retry;
	}
}