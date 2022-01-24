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
typedef  int /*<<< orphan*/  u16 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_CAP_ID_EXP ; 
 int /*<<< orphan*/  PCI_CAP_ID_PCIX ; 
 int PCI_EXP_SAVE_REGS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 

void FUNC2(struct pci_dev *dev)
{
	int error;

	error = FUNC1(dev, PCI_CAP_ID_EXP,
					PCI_EXP_SAVE_REGS * sizeof(u16));
	if (error)
		FUNC0(&dev->dev,
			"unable to preallocate PCI Express save buffer\n");

	error = FUNC1(dev, PCI_CAP_ID_PCIX, sizeof(u16));
	if (error)
		FUNC0(&dev->dev,
			"unable to preallocate PCI-X save buffer\n");
}