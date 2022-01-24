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
typedef  scalar_t__ u32 ;
struct pci_dev {int state_saved; scalar_t__* saved_config_space; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,int,scalar_t__) ; 

int 
FUNC8(struct pci_dev *dev)
{
	int i;
	u32 val;

	if (!dev->state_saved)
		return 0;

	/* PCI Express register must be restored first */
	FUNC5(dev);
	FUNC2(dev);

	/*
	 * The Base Address register should be programmed before the command
	 * register(s)
	 */
	for (i = 15; i >= 0; i--) {
		FUNC1(dev, i * 4, &val);
		if (val != dev->saved_config_space[i]) {
			FUNC0(KERN_DEBUG, &dev->dev, "restoring config "
				"space at offset %#x (was %#x, writing %#x)\n",
				i, val, (int)dev->saved_config_space[i]);
			FUNC7(dev,i * 4,
				dev->saved_config_space[i]);
		}
	}
	FUNC6(dev);
	FUNC4(dev);
	FUNC3(dev);

	dev->state_saved = false;

	return 0;
}