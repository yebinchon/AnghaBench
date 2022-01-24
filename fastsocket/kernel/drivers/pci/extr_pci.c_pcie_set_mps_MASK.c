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
typedef  int u16 ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  PCI_EXP_DEVCTL ; 
 int /*<<< orphan*/  PCI_EXP_DEVCTL_PAYLOAD ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct pci_dev*) ; 

int FUNC4(struct pci_dev *dev, int mps)
{
	u16 v;

	if (mps < 128 || mps > 4096 || !FUNC1(mps))
		return -EINVAL;

	v = FUNC0(mps) - 8;
	if (v > FUNC3(dev))
		return -EINVAL;
	v <<= 5;

	return FUNC2(dev, PCI_EXP_DEVCTL,
						  PCI_EXP_DEVCTL_PAYLOAD, v);
}