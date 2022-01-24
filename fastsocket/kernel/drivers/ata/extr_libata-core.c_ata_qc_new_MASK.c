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
struct ata_queued_cmd {unsigned int tag; } ;
struct ata_port {int pflags; int /*<<< orphan*/  qc_allocated; } ;

/* Variables and functions */
 int ATA_MAX_QUEUE ; 
 int ATA_PFLAG_FROZEN ; 
 struct ata_queued_cmd* FUNC0 (struct ata_port*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static struct ata_queued_cmd *FUNC3(struct ata_port *ap)
{
	struct ata_queued_cmd *qc = NULL;
	unsigned int i;

	/* no command while frozen */
	if (FUNC2(ap->pflags & ATA_PFLAG_FROZEN))
		return NULL;

	/* the last tag is reserved for internal command. */
	for (i = 0; i < ATA_MAX_QUEUE - 1; i++)
		if (!FUNC1(i, &ap->qc_allocated)) {
			qc = FUNC0(ap, i);
			break;
		}

	if (qc)
		qc->tag = i;

	return qc;
}