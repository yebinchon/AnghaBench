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
typedef  scalar_t__ u8 ;
struct TYPE_2__ {int /*<<< orphan*/ * ops; int /*<<< orphan*/  len; } ;
struct pci_vpd_pci22 {int busy; TYPE_1__ base; scalar_t__ cap; int /*<<< orphan*/  lock; } ;
struct pci_dev {TYPE_1__* vpd; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  PCI_CAP_ID_VPD ; 
 int /*<<< orphan*/  PCI_VPD_PCI22_SIZE ; 
 struct pci_vpd_pci22* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pci_vpd_pci22_ops ; 

int FUNC3(struct pci_dev *dev)
{
	struct pci_vpd_pci22 *vpd;
	u8 cap;

	cap = FUNC2(dev, PCI_CAP_ID_VPD);
	if (!cap)
		return -ENODEV;
	vpd = FUNC0(sizeof(*vpd), GFP_ATOMIC);
	if (!vpd)
		return -ENOMEM;

	vpd->base.len = PCI_VPD_PCI22_SIZE;
	vpd->base.ops = &pci_vpd_pci22_ops;
	FUNC1(&vpd->lock);
	vpd->cap = cap;
	vpd->busy = false;
	dev->vpd = &vpd->base;
	return 0;
}