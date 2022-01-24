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
struct TYPE_3__ {int flags; } ;
struct ata_eh_context {TYPE_1__ i; } ;
struct ata_link {int /*<<< orphan*/  device; TYPE_2__* ap; struct ata_eh_context eh_context; } ;
struct TYPE_4__ {int pflags; } ;

/* Variables and functions */
 int ATA_EHI_QUIET ; 
 int ATA_PFLAG_LOADING ; 
 int EAGAIN ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_link*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  sata_deb_timing_hotplug ; 
 unsigned long* FUNC2 (struct ata_eh_context*) ; 
 int /*<<< orphan*/  FUNC3 (struct ata_link*,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct ata_link*,unsigned long const*,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct ata_link *link, unsigned int *class,
			unsigned long deadline)
{
	struct ata_eh_context *ehc = &link->eh_context;

	/* Do hardreset iff it's post-boot probing, please read the
	 * comment above port ops for details.
	 */
	if (!(link->ap->pflags & ATA_PFLAG_LOADING) &&
	    !FUNC0(link->device))
		FUNC3(link, sata_deb_timing_hotplug, deadline,
				    NULL, NULL);
	else {
		const unsigned long *timing = FUNC2(ehc);
		int rc;

		if (!(ehc->i.flags & ATA_EHI_QUIET))
			FUNC1(link, KERN_INFO, "nv: skipping "
					"hardreset on occupied port\n");

		/* make sure the link is online */
		rc = FUNC4(link, timing, deadline);
		/* whine about phy resume failure but proceed */
		if (rc && rc != -EOPNOTSUPP)
			FUNC1(link, KERN_WARNING, "failed to resume "
					"link (errno=%d)\n", rc);
	}

	/* device signature acquisition is unreliable */
	return -EAGAIN;
}