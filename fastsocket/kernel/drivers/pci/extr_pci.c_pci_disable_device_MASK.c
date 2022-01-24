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
struct pci_devres {scalar_t__ enabled; } ;
struct pci_dev {scalar_t__ is_busmaster; int /*<<< orphan*/  enable_cnt; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 struct pci_devres* FUNC2 (struct pci_dev*) ; 

void
FUNC3(struct pci_dev *dev)
{
	struct pci_devres *dr;

	dr = FUNC2(dev);
	if (dr)
		dr->enabled = 0;

	if (FUNC0(1, &dev->enable_cnt) != 0)
		return;

	FUNC1(dev);

	dev->is_busmaster = 0;
}