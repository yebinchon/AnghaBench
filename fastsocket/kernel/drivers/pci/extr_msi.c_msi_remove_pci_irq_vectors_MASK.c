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
struct pci_dev {scalar_t__ msix_enabled; scalar_t__ msi_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  pci_msi_enable ; 

void FUNC1(struct pci_dev *dev)
{
	if (!pci_msi_enable || !dev)
		return;

	if (dev->msi_enabled || dev->msix_enabled)
		FUNC0(dev);
}