#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int dummy; } ;
struct TYPE_2__ {int (* msi_check_device ) (struct pci_dev*,int,int) ;int /*<<< orphan*/  teardown_msi_irqs; int /*<<< orphan*/  setup_msi_irqs; } ;

/* Variables and functions */
 int ENOSYS ; 
 int PCI_CAP_ID_MSI ; 
 TYPE_1__ ppc_md ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct pci_dev*,int,int) ; 

int FUNC2(struct pci_dev* dev, int nvec, int type)
{
	if (!ppc_md.setup_msi_irqs || !ppc_md.teardown_msi_irqs) {
		FUNC0("msi: Platform doesn't provide MSI callbacks.\n");
		return -ENOSYS;
	}

	/* PowerPC doesn't support multiple MSI yet */
	if (type == PCI_CAP_ID_MSI && nvec > 1)
		return 1;

	if (ppc_md.msi_check_device) {
		FUNC0("msi: Using platform check routine.\n");
		return ppc_md.msi_check_device(dev, nvec, type);
	}

        return 0;
}