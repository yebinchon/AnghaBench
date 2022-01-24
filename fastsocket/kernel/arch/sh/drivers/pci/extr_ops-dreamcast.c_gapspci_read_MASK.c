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
 int /*<<< orphan*/  GAPSPCI_BBA_CONFIG ; 
 int PCIBIOS_DEVICE_NOT_FOUND ; 
 int PCIBIOS_SUCCESSFUL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct pci_bus *bus, unsigned int devfn, int where, int size, u32 *val)
{
	*val = 0xffffffff;

	if (!FUNC0(bus->number, devfn))
		return PCIBIOS_DEVICE_NOT_FOUND;

	switch (size) {
	case 1: *val = FUNC1(GAPSPCI_BBA_CONFIG+where); break;
	case 2: *val = FUNC3(GAPSPCI_BBA_CONFIG+where); break;
	case 4: *val = FUNC2(GAPSPCI_BBA_CONFIG+where); break;
	}

        return PCIBIOS_SUCCESSFUL;
}