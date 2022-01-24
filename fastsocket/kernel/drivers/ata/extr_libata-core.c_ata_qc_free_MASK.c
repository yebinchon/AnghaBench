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
struct ata_queued_cmd {unsigned int tag; scalar_t__ flags; struct ata_port* ap; } ;
struct ata_port {int /*<<< orphan*/  qc_allocated; } ;

/* Variables and functions */
 unsigned int ATA_TAG_POISON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct ata_queued_cmd *qc)
{
	struct ata_port *ap;
	unsigned int tag;

	FUNC0(qc == NULL); /* ata_qc_from_tag _might_ return NULL */
	ap = qc->ap;

	qc->flags = 0;
	tag = qc->tag;
	if (FUNC3(FUNC1(tag))) {
		qc->tag = ATA_TAG_POISON;
		FUNC2(tag, &ap->qc_allocated);
	}
}