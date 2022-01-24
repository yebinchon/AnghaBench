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
typedef  int /*<<< orphan*/  uint16_t ;
struct pci_dev {int dummy; } ;
struct lpfc_hba {struct pci_dev* pcidev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_EXT_CAP_ID_SRIOV ; 
 scalar_t__ PCI_SRIOV_TOTAL_VF ; 
 int FUNC0 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,scalar_t__,int /*<<< orphan*/ *) ; 

uint16_t
FUNC2(struct lpfc_hba *phba)
{
	struct pci_dev *pdev = phba->pcidev;
	uint16_t nr_virtfn;
	int pos;

	pos = FUNC0(pdev, PCI_EXT_CAP_ID_SRIOV);
	if (pos == 0)
		return 0;

	FUNC1(pdev, pos + PCI_SRIOV_TOTAL_VF, &nr_virtfn);
	return nr_virtfn;
}