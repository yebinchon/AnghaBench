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
struct pci_channel {int dummy; } ;
struct pci_bus {struct pci_channel* sysdata; } ;

/* Variables and functions */
 int FUNC0 (struct pci_bus*,unsigned int,int) ; 
 int PCIBIOS_FUNC_NOT_SUPPORTED ; 
 int PCIBIOS_SUCCESSFUL ; 
 int /*<<< orphan*/  SH4_PCIPAR ; 
 int /*<<< orphan*/  SH4_PCIPDR ; 
 int FUNC1 (struct pci_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_channel*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sh4_pci_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct pci_bus *bus, unsigned int devfn,
			 int where, int size, u32 val)
{
	struct pci_channel *chan = bus->sysdata;
	unsigned long flags;
	int shift;
	u32 data;

	FUNC3(&sh4_pci_lock, flags);
	FUNC2(chan, FUNC0(bus, devfn, where), SH4_PCIPAR);
	data = FUNC1(chan, SH4_PCIPDR);
	FUNC4(&sh4_pci_lock, flags);

	switch (size) {
	case 1:
		shift = (where & 3) << 3;
		data &= ~(0xff << shift);
		data |= ((val & 0xff) << shift);
		break;
	case 2:
		shift = (where & 2) << 3;
		data &= ~(0xffff << shift);
		data |= ((val & 0xffff) << shift);
		break;
	case 4:
		data = val;
		break;
	default:
		return PCIBIOS_FUNC_NOT_SUPPORTED;
	}

	FUNC2(chan, data, SH4_PCIPDR);

	return PCIBIOS_SUCCESSFUL;
}