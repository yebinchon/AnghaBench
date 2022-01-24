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
struct ixgbe_adapter {TYPE_1__* vfinfo; } ;
struct TYPE_2__ {int /*<<< orphan*/  vf_mac_addresses; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 struct ixgbe_adapter* FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  probe ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 

int FUNC4(struct pci_dev *pdev, unsigned int event_mask)
{
	unsigned char vf_mac_addr[6];
	struct ixgbe_adapter *adapter = FUNC2(pdev);
	unsigned int vfn = (event_mask & 0x3f);

	bool enable = ((event_mask & 0x10000000U) != 0);

	if (enable) {
		FUNC3(vf_mac_addr);
		FUNC0(probe, "IOV: VF %d is enabled MAC %pM\n",
		       vfn, vf_mac_addr);
		/*
		 * Store away the VF "permananet" MAC address, it will ask
		 * for it later.
		 */
		FUNC1(adapter->vfinfo[vfn].vf_mac_addresses, vf_mac_addr, 6);
	}

	return 0;
}