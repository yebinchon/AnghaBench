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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (struct pci_bus*,unsigned int,int) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (unsigned long) ; 
 scalar_t__ FUNC5 () ; 

__attribute__((used)) static int
FUNC6(struct pci_bus *bus, unsigned int devfn, int where,
		int size, u32 *value)
{
	unsigned long addr = FUNC2(bus, devfn, where);
	u32 val = FUNC4(addr) >> ((where & 3) * 8);

	if (FUNC3(1) || FUNC5()) {
		FUNC1(FUNC0(IOP13XX_XBG_BECSR) & 3,
			IOP13XX_XBG_BECSR);
		val = 0xffffffff;
	}

	*value = val;

	return PCIBIOS_SUCCESSFUL;
}