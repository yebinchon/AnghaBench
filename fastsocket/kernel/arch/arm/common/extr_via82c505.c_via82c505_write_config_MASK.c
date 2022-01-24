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
struct pci_bus {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pci_bus*,unsigned int,int) ; 
 int PCIBIOS_SUCCESSFUL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(struct pci_bus *bus, unsigned int devfn, int where,
		       int size, u32 value)
{
	FUNC2(FUNC0(bus,devfn,where),0xCF8);
	switch (size) {
	case 1:
		FUNC1(value, 0xCFC + (where&3));
		break;
	case 2:
		FUNC3(value, 0xCFC + (where&2));
		break;
	case 4:
		FUNC2(value, 0xCFC);
		break;
	}
	return PCIBIOS_SUCCESSFUL;
}