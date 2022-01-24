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
struct spider_net_card {int /*<<< orphan*/  regs; TYPE_1__* netdev; struct pci_dev* pdev; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {unsigned long mem_start; unsigned long mem_end; } ;

/* Variables and functions */
 int IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 scalar_t__ FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 scalar_t__ FUNC5 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC7 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC8 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*) ; 
 struct spider_net_card* FUNC11 () ; 
 int /*<<< orphan*/  spider_net_driver_name ; 

__attribute__((used)) static struct spider_net_card *
FUNC12(struct pci_dev *pdev)
{
	struct spider_net_card *card;
	unsigned long mmio_start, mmio_len;

	if (FUNC3(pdev)) {
		FUNC0(&pdev->dev, "Couldn't enable PCI device\n");
		return NULL;
	}

	if (!(FUNC6(pdev, 0) & IORESOURCE_MEM)) {
		FUNC0(&pdev->dev,
		        "Couldn't find proper PCI device base address.\n");
		goto out_disable_dev;
	}

	if (FUNC5(pdev, spider_net_driver_name)) {
		FUNC0(&pdev->dev,
		        "Couldn't obtain PCI resources, aborting.\n");
		goto out_disable_dev;
	}

	FUNC10(pdev);

	card = FUNC11();
	if (!card) {
		FUNC0(&pdev->dev,
		        "Couldn't allocate net_device structure, aborting.\n");
		goto out_release_regions;
	}
	card->pdev = pdev;

	/* fetch base address and length of first resource */
	mmio_start = FUNC8(pdev, 0);
	mmio_len = FUNC7(pdev, 0);

	card->netdev->mem_start = mmio_start;
	card->netdev->mem_end = mmio_start + mmio_len;
	card->regs = FUNC1(mmio_start, mmio_len);

	if (!card->regs) {
		FUNC0(&pdev->dev,
		        "Couldn't obtain PCI resources, aborting.\n");
		goto out_release_regions;
	}

	return card;

out_release_regions:
	FUNC4(pdev);
out_disable_dev:
	FUNC2(pdev);
	FUNC9(pdev, NULL);
	return NULL;
}