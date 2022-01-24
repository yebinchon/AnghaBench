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
struct pci_pbm_info {int /*<<< orphan*/  devhandle; } ;
struct pci_bus {unsigned int number; struct pci_pbm_info* sysdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned int,unsigned int) ; 
 int PCIBIOS_SUCCESSFUL ; 
 unsigned int FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (unsigned int) ; 
 scalar_t__ FUNC3 (struct pci_pbm_info*,unsigned int,unsigned int,int) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct pci_bus *bus_dev, unsigned int devfn,
			       int where, int size, u32 value)
{
	struct pci_pbm_info *pbm = bus_dev->sysdata;
	u32 devhandle = pbm->devhandle;
	unsigned int bus = bus_dev->number;
	unsigned int device = FUNC2(devfn);
	unsigned int func = FUNC1(devfn);
	unsigned long ret;

	if (FUNC3(pbm, bus, devfn, where)) {
		/* Do nothing. */
	} else {
		ret = FUNC4(devhandle,
				FUNC0(bus, device, func),
				where, size, value);
	}
	return PCIBIOS_SUCCESSFUL;
}