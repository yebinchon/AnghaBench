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
struct intel_uncore_box {struct pci_dev* pci_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNBEP_PCI_PMON_BOX_CTL ; 
 int /*<<< orphan*/  SNBEP_PMON_BOX_CTL_INT ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct intel_uncore_box *box)
{
	struct pci_dev *pdev = box->pci_dev;

	FUNC0(pdev, SNBEP_PCI_PMON_BOX_CTL, SNBEP_PMON_BOX_CTL_INT);
}