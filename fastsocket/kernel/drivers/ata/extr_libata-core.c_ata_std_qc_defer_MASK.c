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
struct TYPE_4__ {scalar_t__ protocol; } ;
struct ata_queued_cmd {TYPE_2__ tf; TYPE_1__* dev; } ;
struct ata_link {int /*<<< orphan*/  sactive; int /*<<< orphan*/  active_tag; } ;
struct TYPE_3__ {struct ata_link* link; } ;

/* Variables and functions */
 int ATA_DEFER_LINK ; 
 scalar_t__ ATA_PROT_NCQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

int FUNC1(struct ata_queued_cmd *qc)
{
	struct ata_link *link = qc->dev->link;

	if (qc->tf.protocol == ATA_PROT_NCQ) {
		if (!FUNC0(link->active_tag))
			return 0;
	} else {
		if (!FUNC0(link->active_tag) && !link->sactive)
			return 0;
	}

	return ATA_DEFER_LINK;
}