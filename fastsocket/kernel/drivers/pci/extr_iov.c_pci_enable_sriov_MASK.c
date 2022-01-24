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
struct pci_dev {int /*<<< orphan*/  is_physfn; } ;

/* Variables and functions */
 int ENODEV ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  pci_sriov_enabled ; 
 int FUNC1 (struct pci_dev*,int) ; 

int FUNC2(struct pci_dev *dev, int nr_virtfn)
{
	FUNC0();

	if (!pci_sriov_enabled)
		return -EPERM;

	if (!dev->is_physfn)
		return -ENODEV;

	return FUNC1(dev, nr_virtfn);
}