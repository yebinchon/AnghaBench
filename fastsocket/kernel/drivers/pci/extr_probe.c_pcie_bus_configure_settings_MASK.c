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
typedef  scalar_t__ u8 ;
struct pci_bus {int /*<<< orphan*/  self; } ;

/* Variables and functions */
 scalar_t__ PCIE_BUS_PEER2PEER ; 
 scalar_t__ PCIE_BUS_SAFE ; 
 scalar_t__ PCIE_BUS_TUNE_OFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_bus*,int /*<<< orphan*/  (*) (int /*<<< orphan*/ ,scalar_t__*),scalar_t__*) ; 
 scalar_t__ pcie_bus_config ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__*) ; 

void FUNC4(struct pci_bus *bus, u8 mpss)
{
	u8 smpss;

	if (!FUNC0(bus->self))
		return;

	if (pcie_bus_config == PCIE_BUS_TUNE_OFF)
		return;

	/* FIXME - Peer to peer DMA is possible, though the endpoint would need
	 * to be aware to the MPS of the destination.  To work around this,
	 * simply force the MPS of the entire system to the smallest possible.
	 */
	if (pcie_bus_config == PCIE_BUS_PEER2PEER)
		smpss = 0;

	if (pcie_bus_config == PCIE_BUS_SAFE) {
		smpss = mpss;

		FUNC3(bus->self, &smpss);
		FUNC1(bus, pcie_find_smpss, &smpss);
	}

	FUNC2(bus->self, &smpss);
	FUNC1(bus, pcie_bus_configure_set, &smpss);
}