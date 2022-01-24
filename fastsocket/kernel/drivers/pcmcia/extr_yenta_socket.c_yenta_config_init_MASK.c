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
typedef  int u16 ;
struct yenta_socket {struct pci_dev* dev; } ;
struct pci_dev {TYPE_1__* subordinate; int /*<<< orphan*/ * resource; } ;
struct pci_bus_region {int start; } ;
struct TYPE_2__ {int subordinate; int secondary; int primary; } ;

/* Variables and functions */
 int /*<<< orphan*/  CB_BRIDGE_CONTROL ; 
 int CB_BRIDGE_CRST ; 
 int CB_BRIDGE_ISAEN ; 
 int CB_BRIDGE_POSTEN ; 
 int CB_BRIDGE_PREFETCH0 ; 
 int CB_BRIDGE_PREFETCH1 ; 
 int CB_BRIDGE_VGAEN ; 
 int /*<<< orphan*/  CB_LEGACY_MODE_BASE ; 
 int L1_CACHE_BYTES ; 
 int /*<<< orphan*/  PCI_BASE_ADDRESS_0 ; 
 int /*<<< orphan*/  PCI_CACHE_LINE_SIZE ; 
 int /*<<< orphan*/  PCI_COMMAND ; 
 int PCI_COMMAND_IO ; 
 int PCI_COMMAND_MASTER ; 
 int PCI_COMMAND_MEMORY ; 
 int PCI_COMMAND_WAIT ; 
 int /*<<< orphan*/  PCI_LATENCY_TIMER ; 
 int /*<<< orphan*/  PCI_PRIMARY_BUS ; 
 int FUNC0 (struct yenta_socket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct yenta_socket*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct yenta_socket*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct yenta_socket*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,struct pci_bus_region*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct yenta_socket *socket)
{
	u16 bridge;
	struct pci_dev *dev = socket->dev;
	struct pci_bus_region region;

	FUNC4(socket->dev, &region, &dev->resource[0]);

	FUNC2(socket, CB_LEGACY_MODE_BASE, 0);
	FUNC2(socket, PCI_BASE_ADDRESS_0, region.start);
	FUNC3(socket, PCI_COMMAND,
			PCI_COMMAND_IO |
			PCI_COMMAND_MEMORY |
			PCI_COMMAND_MASTER |
			PCI_COMMAND_WAIT);

	/* MAGIC NUMBERS! Fixme */
	FUNC1(socket, PCI_CACHE_LINE_SIZE, L1_CACHE_BYTES / 4);
	FUNC1(socket, PCI_LATENCY_TIMER, 168);
	FUNC2(socket, PCI_PRIMARY_BUS,
		(176 << 24) |			   /* sec. latency timer */
		(dev->subordinate->subordinate << 16) | /* subordinate bus */
		(dev->subordinate->secondary << 8) |  /* secondary bus */
		dev->subordinate->primary);		   /* primary bus */

	/*
	 * Set up the bridging state:
	 *  - enable write posting.
	 *  - memory window 0 prefetchable, window 1 non-prefetchable
	 *  - PCI interrupts enabled if a PCI interrupt exists..
	 */
	bridge = FUNC0(socket, CB_BRIDGE_CONTROL);
	bridge &= ~(CB_BRIDGE_CRST | CB_BRIDGE_PREFETCH1 | CB_BRIDGE_ISAEN | CB_BRIDGE_VGAEN);
	bridge |= CB_BRIDGE_PREFETCH0 | CB_BRIDGE_POSTEN;
	FUNC3(socket, CB_BRIDGE_CONTROL, bridge);
}