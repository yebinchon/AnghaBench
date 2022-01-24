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
struct pci_controller {int dummy; } ;
struct pci_bus {int /*<<< orphan*/  number; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int PCIBIOS_DEVICE_NOT_FOUND ; 
 int PCIBIOS_SUCCESSFUL ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int /*<<< orphan*/ *) ; 
 char* FUNC2 (struct pci_controller*,unsigned int,unsigned int) ; 
 struct pci_controller* FUNC3 (struct pci_bus*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

__attribute__((used)) static int FUNC5(struct pci_bus *bus,
		unsigned int devfn, int where, int size, u32 *val)
{
	char *config;
	struct pci_controller *hose = FUNC3(bus);
	unsigned int devno = devfn >> 3;
	unsigned int fn = devfn & 0x7;

	/* allignment check */
	FUNC0(where % size);

	FUNC4("    fake read: bus=0x%x, ", bus->number);
	config = FUNC2(hose, devno, fn);

	FUNC4("devno=0x%x, where=0x%x, size=0x%x, ", devno, where, size);
	if (!config) {
		FUNC4("failed\n");
		return PCIBIOS_DEVICE_NOT_FOUND;
	}

	FUNC1(config, where, size, val);
	FUNC4("val=0x%x\n", *val);

	return PCIBIOS_SUCCESSFUL;
}