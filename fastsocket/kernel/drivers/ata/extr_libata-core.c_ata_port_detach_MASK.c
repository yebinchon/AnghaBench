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
struct ata_port {int pflags; int /*<<< orphan*/  scsi_host; int /*<<< orphan*/  hotplug_task; int /*<<< orphan*/  lock; TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  error_handler; } ;

/* Variables and functions */
 int ATA_PFLAG_UNLOADED ; 
 int ATA_PFLAG_UNLOADING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct ata_port*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct ata_port *ap)
{
	unsigned long flags;

	if (!ap->ops->error_handler)
		goto skip_eh;

	/* tell EH we're leaving & flush EH */
	FUNC5(ap->lock, flags);
	ap->pflags |= ATA_PFLAG_UNLOADING;
	FUNC1(ap);
	FUNC6(ap->lock, flags);

	/* wait till EH commits suicide */
	FUNC2(ap);

	/* it better be dead now */
	FUNC0(!(ap->pflags & ATA_PFLAG_UNLOADED));

	FUNC3(&ap->hotplug_task);

 skip_eh:
	/* remove the associated SCSI host */
	FUNC4(ap->scsi_host);
}