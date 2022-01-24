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
 int PCI_NUM_RESOURCES ; 
 int FUNC0 (struct pci_dev*,int) ; 
 scalar_t__ FUNC1 (struct pci_dev*) ; 

int FUNC2(struct pci_dev *dev)
{
	if (FUNC1(dev))
		return FUNC0(dev, (1 << PCI_NUM_RESOURCES) - 1);
	return 0;
}