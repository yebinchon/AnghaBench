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
typedef  int /*<<< orphan*/  u32 ;
struct ata_port {scalar_t__ sector_buf; } ;
struct ata_link {struct ata_port* ap; } ;
struct ata_device {int /*<<< orphan*/  gscr; struct ata_link* link; } ;
typedef  int /*<<< orphan*/  gscr ;

/* Variables and functions */
 unsigned int ATA_DEV_PMP ; 
 int /*<<< orphan*/  ATA_EH_REVALIDATE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int ENODEV ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int SATA_PMP_GSCR_DWORDS ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct ata_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct ata_device*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ata_link*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ata_link*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC7 (struct ata_device*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct ata_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct ata_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct ata_device *dev, unsigned int new_class)
{
	struct ata_link *link = dev->link;
	struct ata_port *ap = link->ap;
	u32 *gscr = (void *)ap->sector_buf;
	int rc;

	FUNC0("ENTER\n");

	FUNC4(link, NULL, ATA_EH_REVALIDATE);

	if (!FUNC2(dev)) {
		rc = -ENODEV;
		goto fail;
	}

	/* wrong class? */
	if (FUNC1(new_class) && new_class != ATA_DEV_PMP) {
		rc = -ENODEV;
		goto fail;
	}

	/* read GSCR */
	rc = FUNC8(dev, gscr);
	if (rc)
		goto fail;

	/* is the pmp still there? */
	if (!FUNC9(dev, gscr)) {
		rc = -ENODEV;
		goto fail;
	}

	FUNC6(dev->gscr, gscr, sizeof(gscr[0]) * SATA_PMP_GSCR_DWORDS);

	rc = FUNC7(dev, 0);
	if (rc)
		goto fail;

	FUNC5(link, NULL, ATA_EH_REVALIDATE);

	FUNC0("EXIT, rc=0\n");
	return 0;

 fail:
	FUNC3(dev, KERN_ERR,
		       "PMP revalidation failed (errno=%d)\n", rc);
	FUNC0("EXIT, rc=%d\n", rc);
	return rc;
}