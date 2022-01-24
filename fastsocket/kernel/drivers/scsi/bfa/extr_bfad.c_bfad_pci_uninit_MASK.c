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
struct bfad_s {int /*<<< orphan*/  pci_bar2_kva; int /*<<< orphan*/  pci_bar0_kva; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ *) ; 

void
FUNC5(struct pci_dev *pdev, struct bfad_s *bfad)
{
	FUNC2(pdev, bfad->pci_bar0_kva);
	FUNC2(pdev, bfad->pci_bar2_kva);
	FUNC3(pdev);
	/* Disable PCIE Advanced Error Recovery (AER) */
	FUNC1(pdev);
	FUNC0(pdev);
	FUNC4(pdev, NULL);
}