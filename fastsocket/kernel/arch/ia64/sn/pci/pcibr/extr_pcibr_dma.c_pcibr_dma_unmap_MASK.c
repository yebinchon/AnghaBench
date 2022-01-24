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
struct pcidev_info {scalar_t__ pdi_pcibus_info; } ;
struct pcibus_info {int dummy; } ;
struct pci_dev {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ PCI32_MAPPED_BASE ; 
 struct pcidev_info* FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pcibus_info*,int) ; 

void
FUNC5(struct pci_dev *hwdev, dma_addr_t dma_handle, int direction)
{
	struct pcidev_info *pcidev_info = FUNC3(hwdev);
	struct pcibus_info *pcibus_info =
	    (struct pcibus_info *)pcidev_info->pdi_pcibus_info;

	if (FUNC2(dma_handle)) {
		int ate_index;

		ate_index =
		    FUNC1((FUNC0(dma_handle) - PCI32_MAPPED_BASE));
		FUNC4(pcibus_info, ate_index);
	}
}