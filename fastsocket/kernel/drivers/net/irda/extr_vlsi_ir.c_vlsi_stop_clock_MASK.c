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
typedef  int u8 ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int CLKCTL_CLKSTP ; 
 int CLKCTL_EXTCLK ; 
 int CLKCTL_PD_INV ; 
 int /*<<< orphan*/  VLSI_PCI_CLKCTL ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct pci_dev *pdev)
{
	u8	clkctl;

	/* disconnect chip from clock source */
	FUNC0(pdev, VLSI_PCI_CLKCTL, &clkctl);
	clkctl |= CLKCTL_CLKSTP;
	FUNC1(pdev, VLSI_PCI_CLKCTL, clkctl);

	/* disable all clock sources */
	clkctl &= ~(CLKCTL_EXTCLK | CLKCTL_PD_INV);
	FUNC1(pdev, VLSI_PCI_CLKCTL, clkctl);
}