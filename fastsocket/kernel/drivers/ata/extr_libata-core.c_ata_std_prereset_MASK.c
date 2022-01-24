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
struct ata_port {int flags; } ;
struct TYPE_2__ {int action; } ;
struct ata_eh_context {TYPE_1__ i; } ;
struct ata_link {struct ata_eh_context eh_context; struct ata_port* ap; } ;

/* Variables and functions */
 int ATA_EH_HARDRESET ; 
 int ATA_EH_SOFTRESET ; 
 int ATA_FLAG_SATA ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  FUNC0 (struct ata_link*,int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC1 (struct ata_link*) ; 
 unsigned long* FUNC2 (struct ata_eh_context*) ; 
 int FUNC3 (struct ata_link*,unsigned long const*,unsigned long) ; 

int FUNC4(struct ata_link *link, unsigned long deadline)
{
	struct ata_port *ap = link->ap;
	struct ata_eh_context *ehc = &link->eh_context;
	const unsigned long *timing = FUNC2(ehc);
	int rc;

	/* if we're about to do hardreset, nothing more to do */
	if (ehc->i.action & ATA_EH_HARDRESET)
		return 0;

	/* if SATA, resume link */
	if (ap->flags & ATA_FLAG_SATA) {
		rc = FUNC3(link, timing, deadline);
		/* whine about phy resume failure but proceed */
		if (rc && rc != -EOPNOTSUPP)
			FUNC0(link, KERN_WARNING, "failed to resume "
					"link for reset (errno=%d)\n", rc);
	}

	/* no point in trying softreset on offline link */
	if (FUNC1(link))
		ehc->i.action &= ~ATA_EH_SOFTRESET;

	return 0;
}