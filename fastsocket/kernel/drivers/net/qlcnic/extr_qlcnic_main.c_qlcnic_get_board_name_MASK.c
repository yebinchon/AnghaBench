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
struct qlcnic_adapter {int /*<<< orphan*/  mac_addr; struct pci_dev* pdev; } ;
struct pci_dev {scalar_t__ vendor; scalar_t__ device; } ;
struct TYPE_2__ {scalar_t__ vendor; scalar_t__ device; char* short_name; } ;

/* Variables and functions */
 int NUM_SUPPORTED_BOARDS ; 
 TYPE_1__* qlcnic_boards ; 
 scalar_t__ FUNC0 (struct qlcnic_adapter*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static void FUNC2(struct qlcnic_adapter *adapter, char *name)
{
	struct pci_dev *pdev = adapter->pdev;
	int i, found = 0;

	for (i = 0; i < NUM_SUPPORTED_BOARDS; ++i) {
		if (qlcnic_boards[i].vendor == pdev->vendor &&
		    qlcnic_boards[i].device == pdev->device &&
		    FUNC0(adapter, i)) {
			found = 1;
			break;
		}
	}

	if (!found)
		FUNC1(name, "%pM Gigabit Ethernet", adapter->mac_addr);
	else
		FUNC1(name, "%pM: %s" , adapter->mac_addr,
			qlcnic_boards[i].short_name);
}