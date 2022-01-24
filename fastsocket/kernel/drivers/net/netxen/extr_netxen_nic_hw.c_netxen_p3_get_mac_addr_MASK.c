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
typedef  int uint32_t ;
typedef  int u64 ;
struct TYPE_2__ {int pci_func; } ;
struct netxen_adapter {TYPE_1__ ahw; } ;

/* Variables and functions */
 int CRB_MAC_BLOCK_START ; 
 int FUNC0 (struct netxen_adapter*,int) ; 
 int FUNC1 (int) ; 

int FUNC2(struct netxen_adapter *adapter, u64 *mac)
{
	uint32_t crbaddr, mac_hi, mac_lo;
	int pci_func = adapter->ahw.pci_func;

	crbaddr = CRB_MAC_BLOCK_START +
		(4 * ((pci_func/2) * 3)) + (4 * (pci_func & 1));

	mac_lo = FUNC0(adapter, crbaddr);
	mac_hi = FUNC0(adapter, crbaddr+4);

	if (pci_func & 1)
		*mac = FUNC1((mac_lo >> 16) | ((u64)mac_hi << 16));
	else
		*mac = FUNC1((u64)mac_lo | ((u64)mac_hi << 32));

	return 0;
}