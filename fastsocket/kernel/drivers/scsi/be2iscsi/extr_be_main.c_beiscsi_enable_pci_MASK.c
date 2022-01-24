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
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int FUNC3 (struct pci_dev*) ; 
 int FUNC4 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 

__attribute__((used)) static int FUNC6(struct pci_dev *pcidev)
{
	int ret;

	ret = FUNC3(pcidev);
	if (ret) {
		FUNC1(&pcidev->dev,
			"beiscsi_enable_pci - enable device failed\n");
		return ret;
	}

	FUNC5(pcidev);
	if (FUNC4(pcidev, FUNC0(64))) {
		ret = FUNC4(pcidev, FUNC0(32));
		if (ret) {
			FUNC1(&pcidev->dev, "Could not set PCI DMA Mask\n");
			FUNC2(pcidev);
			return ret;
		}
	}
	return 0;
}