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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct pci_bus {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct pci_bus*,unsigned int,int,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct pci_bus*,unsigned int,int,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct pci_bus*,unsigned int,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct pci_bus *bus, unsigned int devfn,
			   int where, int size, u32 *val)
{
	switch (size) {
	case 1:
		return FUNC0(bus, devfn, where, (u8 *) val);
	case 2:
		return FUNC2(bus, devfn, where, (u16 *) val);
	default:
		return FUNC1(bus, devfn, where, val);
	}
}