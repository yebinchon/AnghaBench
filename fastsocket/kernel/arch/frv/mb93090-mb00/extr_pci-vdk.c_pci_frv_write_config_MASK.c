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
typedef  int /*<<< orphan*/  u32 ;
struct pci_bus {int /*<<< orphan*/  number; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct pci_bus*,unsigned int,int) ; 
 int PCIBIOS_SUCCESSFUL ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct pci_bus *bus, unsigned int devfn, int where, int size,
				u32 value)
{
	switch (size) {
	case 1:
		if (bus->number == 0 && devfn == FUNC2(0, 0)) {
			FUNC3(where, value);
		}
		else {
			FUNC6(FUNC1(bus, devfn, where));
			FUNC7(where, value);
		}
		break;

	case 2:
		if (bus->number == 0 && devfn == FUNC2(0, 0)) {
			FUNC5(where, value);
		}
		else {
			FUNC6(FUNC1(bus, devfn, where));
			FUNC9(where, value);
		}
		break;

	case 4:
		if (bus->number == 0 && devfn == FUNC2(0, 0)) {
			FUNC4(where, value);
		}
		else {
			FUNC6(FUNC1(bus, devfn, where));
			FUNC8(where, value);
		}
		break;

	default:
		FUNC0();
	}

	return PCIBIOS_SUCCESSFUL;
}