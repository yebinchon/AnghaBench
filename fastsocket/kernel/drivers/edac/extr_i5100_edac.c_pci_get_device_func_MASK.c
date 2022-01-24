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
struct pci_dev {int /*<<< orphan*/  devfn; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 struct pci_dev* FUNC1 (unsigned int,unsigned int,struct pci_dev*) ; 

__attribute__((used)) static struct pci_dev *FUNC2(unsigned vendor,
					   unsigned device,
					   unsigned func)
{
	struct pci_dev *ret = NULL;

	while (1) {
		ret = FUNC1(vendor, device, ret);

		if (!ret)
			break;

		if (FUNC0(ret->devfn) == func)
			break;
	}

	return ret;
}