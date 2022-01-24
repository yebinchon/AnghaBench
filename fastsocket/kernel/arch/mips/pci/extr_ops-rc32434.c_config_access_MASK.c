#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct pci_bus {int /*<<< orphan*/  number; } ;
struct TYPE_2__ {int /*<<< orphan*/  pcicfgd; } ;

/* Variables and functions */
 unsigned char PCI_ACCESS_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (unsigned int) ; 
 TYPE_1__* rc32434_pci ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static inline int FUNC4(unsigned char access_type,
				struct pci_bus *bus, unsigned int devfn,
				unsigned char where, u32 *data)
{
	unsigned int slot = FUNC2(devfn);
	u8 func = FUNC1(devfn);

	/* Setup address */
	FUNC0(bus->number, slot, func, where);
	FUNC3();

	if (access_type == PCI_ACCESS_WRITE)
		rc32434_pci->pcicfgd = *data;
	else
		*data = rc32434_pci->pcicfgd;

	FUNC3();

	return 0;
}