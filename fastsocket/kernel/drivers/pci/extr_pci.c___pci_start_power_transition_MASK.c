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
typedef  scalar_t__ pci_power_t ;

/* Variables and functions */
 scalar_t__ PCI_D0 ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,scalar_t__) ; 

__attribute__((used)) static void FUNC1(struct pci_dev *dev, pci_power_t state)
{
	if (state == PCI_D0)
		FUNC0(dev, PCI_D0);
}