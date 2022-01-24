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
struct pci_dev {int dummy; } ;
struct ioat_dca_priv {int max_requesters; int /*<<< orphan*/  requester_count; TYPE_1__* req_slots; scalar_t__ dca_base; } ;
struct device {int /*<<< orphan*/ * bus; } ;
struct dca_provider {int dummy; } ;
struct TYPE_2__ {scalar_t__ rid; struct pci_dev* pdev; } ;

/* Variables and functions */
 int ENODEV ; 
 struct ioat_dca_priv* FUNC0 (struct dca_provider*) ; 
 int /*<<< orphan*/  pci_bus_type ; 
 struct pci_dev* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct dca_provider *dca,
				     struct device *dev)
{
	struct ioat_dca_priv *ioatdca = FUNC0(dca);
	struct pci_dev *pdev;
	int i;

	/* This implementation only supports PCI-Express */
	if (dev->bus != &pci_bus_type)
		return -ENODEV;
	pdev = FUNC1(dev);

	for (i = 0; i < ioatdca->max_requesters; i++) {
		if (ioatdca->req_slots[i].pdev == pdev) {
			FUNC2(0, ioatdca->dca_base + (i * 4));
			ioatdca->req_slots[i].pdev = NULL;
			ioatdca->req_slots[i].rid = 0;
			ioatdca->requester_count--;
			return i;
		}
	}
	return -ENODEV;
}