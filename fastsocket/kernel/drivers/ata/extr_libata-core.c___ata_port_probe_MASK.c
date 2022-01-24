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
struct ata_eh_info {int flags; int /*<<< orphan*/  action; int /*<<< orphan*/  probe_mask; } ;
struct TYPE_2__ {struct ata_eh_info eh_info; } ;
struct ata_port {int /*<<< orphan*/  lock; int /*<<< orphan*/  pflags; TYPE_1__ link; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_ALL_DEVICES ; 
 int ATA_EHI_NO_AUTOPSY ; 
 int ATA_EHI_QUIET ; 
 int /*<<< orphan*/  ATA_EH_RESET ; 
 int /*<<< orphan*/  ATA_PFLAG_INITIALIZING ; 
 int /*<<< orphan*/  ATA_PFLAG_LOADING ; 
 int /*<<< orphan*/  FUNC0 (struct ata_port*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 

void FUNC3(struct ata_port *ap)
{
	struct ata_eh_info *ehi = &ap->link.eh_info;
	unsigned long flags;

	/* kick EH for boot probing */
	FUNC1(ap->lock, flags);

	ehi->probe_mask |= ATA_ALL_DEVICES;
	ehi->action |= ATA_EH_RESET;
	ehi->flags |= ATA_EHI_NO_AUTOPSY | ATA_EHI_QUIET;

	ap->pflags &= ~ATA_PFLAG_INITIALIZING;
	ap->pflags |= ATA_PFLAG_LOADING;
	FUNC0(ap);

	FUNC2(ap->lock, flags);
}