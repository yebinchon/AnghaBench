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
typedef  int u32 ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_EXP_DEVCAP2 ; 
 int PCI_EXP_DEVCAP2_LTR ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 

bool FUNC1(struct pci_dev *dev)
{
	u32 cap;

	FUNC0(dev, PCI_EXP_DEVCAP2, &cap);

	return cap & PCI_EXP_DEVCAP2_LTR;
}