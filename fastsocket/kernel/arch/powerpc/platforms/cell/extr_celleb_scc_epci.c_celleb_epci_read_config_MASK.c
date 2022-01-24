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
struct pci_controller {scalar_t__ first_busno; } ;
struct pci_bus {scalar_t__ number; } ;
typedef  scalar_t__ PCI_IO_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int PCIBIOS_DEVICE_NOT_FOUND ; 
 int FUNC1 (struct pci_controller*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct pci_controller*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_controller*) ; 
 scalar_t__ FUNC4 (struct pci_bus*,struct pci_controller*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_controller*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 struct pci_controller* FUNC11 (struct pci_bus*) ; 
 int /*<<< orphan*/  FUNC12 (char*,scalar_t__,unsigned int,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct pci_bus *bus,
			unsigned int devfn, int where, int size, u32 *val)
{
	PCI_IO_ADDR epci_base;
	PCI_IO_ADDR addr;
	struct pci_controller *hose = FUNC11(bus);

	/* allignment check */
	FUNC0(where % size);

	if (!FUNC3(hose))
		return PCIBIOS_DEVICE_NOT_FOUND;

	if (bus->number == hose->first_busno && devfn == 0) {
		/* EPCI controller self */

		epci_base = FUNC2(hose);
		addr = epci_base + where;

		switch (size) {
		case 1:
			*val = FUNC6(addr);
			break;
		case 2:
			*val = FUNC7(addr);
			break;
		case 4:
			*val = FUNC8(addr);
			break;
		default:
			return PCIBIOS_DEVICE_NOT_FOUND;
		}

	} else {

		FUNC5(hose);
		addr = FUNC4(bus, hose, devfn, where);

		switch (size) {
		case 1:
			*val = FUNC6(addr);
			break;
		case 2:
			*val = FUNC9(addr);
			break;
		case 4:
			*val = FUNC10(addr);
			break;
		default:
			return PCIBIOS_DEVICE_NOT_FOUND;
		}
	}

	FUNC12("EPCI: "
		 "addr=0x%p, devfn=0x%x, where=0x%x, size=0x%x, val=0x%x\n",
		 addr, devfn, where, size, *val);

	return FUNC1(hose, NULL);
}