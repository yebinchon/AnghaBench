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
 int ENODEV ; 
 scalar_t__ PCI_ERR_CAP ; 
 int PCI_ERR_CAP_ECRC_CHKE ; 
 int PCI_ERR_CAP_ECRC_GENE ; 
 int /*<<< orphan*/  PCI_EXT_CAP_ID_ERR ; 
 int FUNC0 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,scalar_t__,int) ; 

__attribute__((used)) static int FUNC4(struct pci_dev *dev)
{
	int pos;
	u32 reg32;

	if (!FUNC1(dev))
		return -ENODEV;

	pos = FUNC0(dev, PCI_EXT_CAP_ID_ERR);
	if (!pos)
		return -ENODEV;

	FUNC2(dev, pos + PCI_ERR_CAP, &reg32);
	reg32 &= ~(PCI_ERR_CAP_ECRC_GENE | PCI_ERR_CAP_ECRC_CHKE);
	FUNC3(dev, pos + PCI_ERR_CAP, reg32);

	return 0;
}