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
 int /*<<< orphan*/  IOP13XX_XBG_BECSR ; 
 int PCIBIOS_SUCCESSFUL ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned long,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 unsigned long FUNC4 (struct pci_bus*,unsigned int,int) ; 
 scalar_t__ FUNC5 (int) ; 
 int FUNC6 (unsigned long) ; 
 scalar_t__ FUNC7 () ; 

__attribute__((used)) static int
FUNC8(struct pci_bus *bus, unsigned int devfn, int where,
		int size, u32 *value)
{
	u32 val;
	unsigned long addr = FUNC4(bus, devfn, where);

	/* Hide device numbers > 0 on the local PCI-E bus (Type 0 access) */
	if (!FUNC0(devfn) || (addr & 1)) {
		val = FUNC6(addr) >> ((where & 3) * 8);
		if( FUNC5(1) || FUNC7() ) {
			FUNC3(FUNC2(IOP13XX_XBG_BECSR) & 3,
				IOP13XX_XBG_BECSR);
			val = 0xffffffff;
		}

		FUNC1("addr=%#0lx, val=%#010x", addr, val);
	} else
		val = 0xffffffff;

	*value = val;

	return PCIBIOS_SUCCESSFUL;
}