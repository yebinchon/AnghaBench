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
struct pci_dev {int /*<<< orphan*/  devfn; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_EXP_DEVCTL2 ; 
 int /*<<< orphan*/  PCI_EXP_LTR_EN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct pci_dev *dev)
{
	/* Only primary function can enable/disable LTR */
	if (FUNC0(dev->devfn) != 0)
		return;

	if (!FUNC1(dev))
		return;

	FUNC2(dev, PCI_EXP_DEVCTL2, PCI_EXP_LTR_EN);
}