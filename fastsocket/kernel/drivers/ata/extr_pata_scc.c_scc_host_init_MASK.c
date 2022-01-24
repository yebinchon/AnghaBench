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
struct pci_dev {int dummy; } ;
struct ata_host {int /*<<< orphan*/ * iomap; TYPE_1__** ports; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  ioaddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_DMA_MASK ; 
 size_t SCC_BMID_BAR ; 
 int FUNC0 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int FUNC3 (struct ata_host*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct pci_dev* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct ata_host *host)
{
	struct pci_dev *pdev = FUNC5(host->dev);
	int rc;

	rc = FUNC3(host);
	if (rc)
		return rc;

	rc = FUNC1(pdev, ATA_DMA_MASK);
	if (rc)
		return rc;
	rc = FUNC0(pdev, ATA_DMA_MASK);
	if (rc)
		return rc;

	FUNC4(&host->ports[0]->ioaddr, host->iomap[SCC_BMID_BAR]);

	FUNC2(pdev);

	return 0;
}