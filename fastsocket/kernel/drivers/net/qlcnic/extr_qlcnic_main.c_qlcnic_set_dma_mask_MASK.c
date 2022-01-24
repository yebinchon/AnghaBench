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
 int EIO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct pci_dev *pdev, int *pci_using_dac)
{
	if (!FUNC3(pdev, FUNC0(64)) &&
			!FUNC2(pdev, FUNC0(64)))
		*pci_using_dac = 1;
	else if (!FUNC3(pdev, FUNC0(32)) &&
			!FUNC2(pdev, FUNC0(32)))
		*pci_using_dac = 0;
	else {
		FUNC1(&pdev->dev, "Unable to set DMA mask, aborting\n");
		return -EIO;
	}

	return 0;
}