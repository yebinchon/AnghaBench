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
 int /*<<< orphan*/  FUNC0 (char*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int PCIBIOS_DEVICE_NOT_FOUND ; 
 int PCIBIOS_SUCCESSFUL ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int* bytemask ; 
 int* FUNC3 (int /*<<< orphan*/ ,unsigned int,int) ; 
 scalar_t__ pci_master_aborts ; 

__attribute__((used)) static int FUNC4(struct pci_bus *bus, unsigned int devfn,
				int where, int size, u32 *value)
{
	u32 n;
	u32 *addr;

	n = where % 4;

	FUNC0("In config_read(%d) %d from dev %d:%d:%d\n", size, where,
		bus->number, FUNC2(devfn), FUNC1(devfn));

	addr = FUNC3(bus->number, devfn, where);
	if (!addr)
		return PCIBIOS_DEVICE_NOT_FOUND;

	pci_master_aborts = 0;
	*value = (*addr >> (8*n)) & bytemask[size];
	if (pci_master_aborts) {
			pci_master_aborts = 0;
			*value = 0xffffffff;
			return PCIBIOS_DEVICE_NOT_FOUND;
		}

	return PCIBIOS_SUCCESSFUL;
}