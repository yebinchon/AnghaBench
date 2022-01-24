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
struct pci_dev {scalar_t__ vendor; scalar_t__ device; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_CAP_ID_SHPC ; 
 scalar_t__ PCI_DEVICE_ID_AMD_GOLAM_7450 ; 
 scalar_t__ PCI_VENDOR_ID_AMD ; 
 scalar_t__ FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct pci_dev *dev)
{
	if (dev->vendor == PCI_VENDOR_ID_AMD &&
	    dev->device == PCI_DEVICE_ID_AMD_GOLAM_7450)
		return 1;
	if (!FUNC1(dev, PCI_CAP_ID_SHPC))
		return 0;
	if (FUNC0(dev))
		return 0;
	return 1;
}