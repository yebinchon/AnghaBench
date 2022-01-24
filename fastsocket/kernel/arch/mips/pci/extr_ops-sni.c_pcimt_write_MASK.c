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
struct pci_bus {int /*<<< orphan*/  number; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCIMT_CONFIG_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,unsigned int,int) ; 

__attribute__((used)) static int FUNC4(struct pci_bus *bus, unsigned int devfn, int reg,
		       int size, u32 val)
{
	int res;

	if ((res = FUNC3(bus->number, devfn, reg)))
		return res;

	switch (size) {
	case 1:
		FUNC0(val, PCIMT_CONFIG_DATA + (reg & 3));
		break;
	case 2:
		FUNC2(val, PCIMT_CONFIG_DATA + (reg & 2));
		break;
	case 4:
		FUNC1(val, PCIMT_CONFIG_DATA);
		break;
	}

	return 0;
}