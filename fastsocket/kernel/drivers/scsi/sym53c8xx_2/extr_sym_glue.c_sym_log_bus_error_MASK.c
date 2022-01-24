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
struct sym_data {struct pci_dev* pdev; } ;
struct pci_dev {int dummy; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  PCI_STATUS ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int /*<<< orphan*/ ,unsigned short*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,unsigned short) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct Scsi_Host*,char*,unsigned short) ; 
 struct sym_data* FUNC3 (struct Scsi_Host*) ; 

void FUNC4(struct Scsi_Host *shost)
{
	struct sym_data *sym_data = FUNC3(shost);
	struct pci_dev *pdev = sym_data->pdev;
	unsigned short pci_sts;
	FUNC0(pdev, PCI_STATUS, &pci_sts);
	if (pci_sts & 0xf900) {
		FUNC1(pdev, PCI_STATUS, pci_sts);
		FUNC2(KERN_WARNING, shost,
			"PCI bus error: status = 0x%04x\n", pci_sts & 0xf900);
	}
}