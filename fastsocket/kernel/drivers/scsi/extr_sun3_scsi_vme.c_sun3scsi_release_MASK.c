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
struct Scsi_Host {scalar_t__ irq; } ;

/* Variables and functions */
 scalar_t__ SCSI_IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 scalar_t__ sun3_scsi_regp ; 

int FUNC2 (struct Scsi_Host *shpnt)
{
	if (shpnt->irq != SCSI_IRQ_NONE)
		FUNC0(shpnt->irq, shpnt);

	FUNC1((void *)sun3_scsi_regp);

	return 0;
}