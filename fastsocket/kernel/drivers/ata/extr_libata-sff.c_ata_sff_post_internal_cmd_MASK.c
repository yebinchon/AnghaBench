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
struct ata_queued_cmd {struct ata_port* ap; } ;
struct TYPE_2__ {scalar_t__ bmdma_addr; } ;
struct ata_port {int /*<<< orphan*/  lock; TYPE_1__ ioaddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ata_queued_cmd*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 

void FUNC3(struct ata_queued_cmd *qc)
{
	struct ata_port *ap = qc->ap;
	unsigned long flags;

	FUNC1(ap->lock, flags);

	if (ap->ioaddr.bmdma_addr)
		FUNC0(qc);

	FUNC2(ap->lock, flags);
}