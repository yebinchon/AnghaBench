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
struct pci_dev_rh1 {int /*<<< orphan*/ * msi_kset; } ;
struct pci_dev {int /*<<< orphan*/  msix_enabled; struct pci_dev_rh1* rh_reserved1; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pci_msi_enable ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 

void FUNC3(struct pci_dev *dev)
{
	struct pci_dev_rh1 *pdr = dev->rh_reserved1;

	if (!pci_msi_enable || !dev || !dev->msix_enabled)
		return;

	FUNC2(dev);
	FUNC0(dev);
	if (pdr && pdr->msi_kset) {
		FUNC1(pdr->msi_kset);
		pdr->msi_kset = NULL;
	}
}