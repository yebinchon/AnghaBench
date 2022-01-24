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
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_ANY_ID ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 struct pci_dev* FUNC2 (unsigned int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pci_dev*) ; 

struct pci_dev *FUNC3(unsigned int vendor, unsigned int device,
				struct pci_dev *from)
{
	struct pci_dev *pdev;

	FUNC0(from);
	pdev = FUNC2(vendor, device, PCI_ANY_ID, PCI_ANY_ID, from);
	FUNC1(pdev);
	return pdev;
}