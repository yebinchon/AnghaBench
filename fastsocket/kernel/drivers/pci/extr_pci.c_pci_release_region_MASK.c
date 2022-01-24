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
struct pci_devres {int region_mask; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int IORESOURCE_IO ; 
 int IORESOURCE_MEM ; 
 struct pci_devres* FUNC0 (struct pci_dev*) ; 
 int FUNC1 (struct pci_dev*,int) ; 
 scalar_t__ FUNC2 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC6(struct pci_dev *pdev, int bar)
{
	struct pci_devres *dr;

	if (FUNC2(pdev, bar) == 0)
		return;
	if (FUNC1(pdev, bar) & IORESOURCE_IO)
		FUNC5(FUNC3(pdev, bar),
				FUNC2(pdev, bar));
	else if (FUNC1(pdev, bar) & IORESOURCE_MEM)
		FUNC4(FUNC3(pdev, bar),
				FUNC2(pdev, bar));

	dr = FUNC0(pdev);
	if (dr)
		dr->region_mask &= ~(1 << bar);
}