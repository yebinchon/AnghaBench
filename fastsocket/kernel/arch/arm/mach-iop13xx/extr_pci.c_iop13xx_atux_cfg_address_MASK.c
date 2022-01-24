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
struct pci_sys_data {int busnr; } ;
struct pci_bus {int number; struct pci_sys_data* sysdata; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 

__attribute__((used)) static u32 FUNC2(struct pci_bus *bus, int devfn, int where)
{
	struct pci_sys_data *sys = bus->sysdata;
	u32 addr;

	if (sys->busnr == bus->number)
		addr = 1 << (FUNC1(devfn) + 16) | (FUNC1(devfn) << 11);
	else
		addr = bus->number << 16 | FUNC1(devfn) << 11 | 1;

	addr |=	FUNC0(devfn) << 8 | ((where & 0xff) & ~3);
	addr |= ((where & 0xf00) >> 8) << 24; /* upper register number */

	return addr;
}