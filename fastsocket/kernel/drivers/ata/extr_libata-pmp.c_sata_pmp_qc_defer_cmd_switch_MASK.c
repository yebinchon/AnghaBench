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
struct ata_queued_cmd {int /*<<< orphan*/  flags; TYPE_1__* dev; } ;
struct ata_port {scalar_t__ nr_active_links; struct ata_link* excl_link; } ;
struct ata_link {struct ata_port* ap; } ;
struct TYPE_2__ {struct ata_link* link; } ;

/* Variables and functions */
 int ATA_DEFER_PORT ; 
 int /*<<< orphan*/  ATA_QCFLAG_CLEAR_EXCL ; 
 scalar_t__ FUNC0 (struct ata_link*) ; 
 int FUNC1 (struct ata_queued_cmd*) ; 

int FUNC2(struct ata_queued_cmd *qc)
{
	struct ata_link *link = qc->dev->link;
	struct ata_port *ap = link->ap;

	if (ap->excl_link == NULL || ap->excl_link == link) {
		if (ap->nr_active_links == 0 || FUNC0(link)) {
			qc->flags |= ATA_QCFLAG_CLEAR_EXCL;
			return FUNC1(qc);
		}

		ap->excl_link = link;
	}

	return ATA_DEFER_PORT;
}