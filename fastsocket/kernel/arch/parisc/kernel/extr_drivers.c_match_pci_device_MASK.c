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
struct pci_dev {unsigned int devfn; } ;
struct hardware_path {scalar_t__* bc; scalar_t__ mod; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int FUNC1 (unsigned int) ; 
 struct pci_dev* FUNC2 (struct device*) ; 

__attribute__((used)) static int FUNC3(struct device *dev, int index,
		struct hardware_path *modpath)
{
	struct pci_dev *pdev = FUNC2(dev);
	int id;

	if (index == 5) {
		/* we are at the end of the path, and on the actual device */
		unsigned int devfn = pdev->devfn;
		return ((modpath->bc[5] == FUNC1(devfn)) &&
					(modpath->mod == FUNC0(devfn)));
	}

	id = FUNC1(pdev->devfn) | (FUNC0(pdev->devfn) << 5);
	return (modpath->bc[index] == id);
}