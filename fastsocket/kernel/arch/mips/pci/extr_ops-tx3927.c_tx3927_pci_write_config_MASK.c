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
typedef  int /*<<< orphan*/  u16 ;
struct pci_bus {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  icd; } ;

/* Variables and functions */
 int PCIBIOS_DEVICE_NOT_FOUND ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct pci_bus*,unsigned int,int) ; 
 TYPE_1__* tx3927_pcicptr ; 

__attribute__((used)) static int FUNC4(struct pci_bus *bus, unsigned int devfn,
	int where, int size, u32 val)
{
	if (FUNC3(bus, devfn, where))
		return PCIBIOS_DEVICE_NOT_FOUND;

	switch (size) {
	case 1:
		*(volatile u8 *) ((unsigned long) & tx3927_pcicptr->icd | (where & 3)) = val;
		break;

	case 2:
		*(volatile u16 *) ((unsigned long) & tx3927_pcicptr->icd | (where & 2)) =
	    FUNC1(val);
		break;

	case 4:
		tx3927_pcicptr->icd = FUNC2(val);
	}

	return FUNC0();
}