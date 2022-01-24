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
struct pci_bus {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IOP13XX_ATUX_OCCAR ; 
 int /*<<< orphan*/  IOP13XX_ATUX_OCCDR ; 
 int PCIBIOS_SUCCESSFUL ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (struct pci_bus*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (unsigned long) ; 

__attribute__((used)) static int
FUNC4(struct pci_bus *bus, unsigned int devfn, int where,
		int size, u32 value)
{
	unsigned long addr = FUNC1(bus, devfn, where);
	u32 val;

	if (size != 4) {
		val = FUNC3(addr);
		if (!(FUNC2(1) == 0))
			return PCIBIOS_SUCCESSFUL;

		where = (where & 3) * 8;

		if (size == 1)
			val &= ~(0xff << where);
		else
			val &= ~(0xffff << where);

		FUNC0(val | value << where, IOP13XX_ATUX_OCCDR);
	} else {
		FUNC0(addr, IOP13XX_ATUX_OCCAR);
		FUNC0(value, IOP13XX_ATUX_OCCDR);
	}

	return PCIBIOS_SUCCESSFUL;
}