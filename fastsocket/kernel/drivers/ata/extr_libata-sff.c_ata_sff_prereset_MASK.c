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
struct TYPE_2__ {int action; } ;
struct ata_eh_context {TYPE_1__ i; } ;
struct ata_link {struct ata_eh_context eh_context; } ;

/* Variables and functions */
 int ATA_EH_HARDRESET ; 
 int ENODEV ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  FUNC0 (struct ata_link*) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_link*,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (struct ata_link*,unsigned long) ; 
 int FUNC3 (struct ata_link*,unsigned long) ; 

int FUNC4(struct ata_link *link, unsigned long deadline)
{
	struct ata_eh_context *ehc = &link->eh_context;
	int rc;

	rc = FUNC3(link, deadline);
	if (rc)
		return rc;

	/* if we're about to do hardreset, nothing more to do */
	if (ehc->i.action & ATA_EH_HARDRESET)
		return 0;

	/* wait for !BSY if we don't know that no device is attached */
	if (!FUNC0(link)) {
		rc = FUNC2(link, deadline);
		if (rc && rc != -ENODEV) {
			FUNC1(link, KERN_WARNING, "device not ready "
					"(errno=%d), forcing hardreset\n", rc);
			ehc->i.action |= ATA_EH_HARDRESET;
		}
	}

	return 0;
}