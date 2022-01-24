#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {TYPE_1__* sriov; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; struct pci_dev* dev; int /*<<< orphan*/  nr_virtfn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC4(struct pci_dev *dev)
{
	FUNC0(dev->sriov->nr_virtfn);

	if (dev != dev->sriov->dev)
		FUNC3(dev->sriov->dev);

	FUNC2(&dev->sriov->lock);

	FUNC1(dev->sriov);
	dev->sriov = NULL;
}