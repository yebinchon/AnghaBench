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
struct iowa_bus {int dummy; } ;
typedef  int /*<<< orphan*/  pte_t ;
struct TYPE_2__ {int /*<<< orphan*/  pgd; } ;
typedef  int /*<<< orphan*/  PCI_IO_ADDR ;

/* Variables and functions */
 unsigned long PAGE_SHIFT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const) ; 
 int FUNC1 (int /*<<< orphan*/  const) ; 
 unsigned long PHB_IO_BASE ; 
 unsigned long PHB_IO_END ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 TYPE_1__ init_mm ; 
 int iowa_bus_count ; 
 struct iowa_bus* iowa_busses ; 
 struct iowa_bus* FUNC3 (unsigned long,unsigned long) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ) ; 

struct iowa_bus *FUNC5(const PCI_IO_ADDR addr)
{
	struct iowa_bus *bus;
	int token;

	token = FUNC1(addr);

	if (token && token <= iowa_bus_count)
		bus = &iowa_busses[token - 1];
	else {
		unsigned long vaddr, paddr;
		pte_t *ptep;

		vaddr = (unsigned long)FUNC0(addr);
		if (vaddr < PHB_IO_BASE || vaddr >= PHB_IO_END)
			return NULL;

		ptep = FUNC2(init_mm.pgd, vaddr);
		if (ptep == NULL)
			paddr = 0;
		else
			paddr = FUNC4(*ptep) << PAGE_SHIFT;
		bus = FUNC3(vaddr, paddr);

		if (bus == NULL)
			return NULL;
	}

	return bus;
}