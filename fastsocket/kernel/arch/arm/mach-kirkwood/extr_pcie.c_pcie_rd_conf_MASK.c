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
typedef  int u32 ;
struct pci_bus {int /*<<< orphan*/  number; } ;

/* Variables and functions */
 int PCIBIOS_DEVICE_NOT_FOUND ; 
 int /*<<< orphan*/  PCIE_BASE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  kirkwood_pcie_lock ; 
 int FUNC1 (int /*<<< orphan*/ ,struct pci_bus*,int,int,int,int*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct pci_bus *bus, u32 devfn, int where,
			int size, u32 *val)
{
	unsigned long flags;
	int ret;

	if (FUNC2(bus->number, FUNC0(devfn)) == 0) {
		*val = 0xffffffff;
		return PCIBIOS_DEVICE_NOT_FOUND;
	}

	FUNC3(&kirkwood_pcie_lock, flags);
	ret = FUNC1(PCIE_BASE, bus, devfn, where, size, val);
	FUNC4(&kirkwood_pcie_lock, flags);

	return ret;
}