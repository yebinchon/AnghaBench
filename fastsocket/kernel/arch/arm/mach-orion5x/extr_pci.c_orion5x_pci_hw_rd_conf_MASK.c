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

/* Variables and functions */
 int PCIBIOS_SUCCESSFUL ; 
 int /*<<< orphan*/  PCI_CONF_ADDR ; 
 int PCI_CONF_ADDR_EN ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  PCI_CONF_DATA ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  orion5x_pci_lock ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(int bus, int dev, u32 func,
					u32 where, u32 size, u32 *val)
{
	unsigned long flags;
	FUNC5(&orion5x_pci_lock, flags);

	FUNC7(FUNC0(bus) |
		FUNC1(dev) | FUNC3(where) |
		FUNC2(func) | PCI_CONF_ADDR_EN, PCI_CONF_ADDR);

	*val = FUNC4(PCI_CONF_DATA);

	if (size == 1)
		*val = (*val >> (8*(where & 0x3))) & 0xff;
	else if (size == 2)
		*val = (*val >> (8*(where & 0x3))) & 0xffff;

	FUNC6(&orion5x_pci_lock, flags);

	return PCIBIOS_SUCCESSFUL;
}