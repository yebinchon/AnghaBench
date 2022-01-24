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
struct pci_bus {scalar_t__ number; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct pci_bus*,unsigned int,int) ; 
 int PCIBIOS_SUCCESSFUL ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct pci_bus *bus, unsigned int devfn, int where, int size,
			       u32 *val)
{
	u32 _value;

	if (bus->number == 0 && devfn == FUNC2(0, 0)) {
		_value = FUNC3(where & ~3);
	}
	else {
		FUNC5(FUNC1(bus, devfn, where));
		_value = FUNC4(where & ~3);
	}

	switch (size) {
	case 1:
		_value = _value >> ((where & 3) * 8);
		break;

	case 2:
		_value = _value >> ((where & 2) * 8);
		break;

	case 4:
		break;

	default:
		FUNC0();
	}

	*val = _value;
	return PCIBIOS_SUCCESSFUL;
}