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
struct mem_type {int dummy; } ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long FUNC1 (unsigned long) ; 
 unsigned long FUNC2 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/ * FUNC3 (unsigned long) ; 
 int FUNC4 (int /*<<< orphan*/ *,unsigned long,unsigned long,unsigned long,struct mem_type const*) ; 

__attribute__((used)) static int FUNC5(unsigned long start, unsigned long pfn,
			    size_t size, const struct mem_type *type)
{
	unsigned long addr = start;
	unsigned long next, end = start + size;
	unsigned long phys_addr = FUNC1(pfn);
	pgd_t *pgd;
	int err = 0;

	FUNC0(addr >= end);
	pgd = FUNC3(addr);
	do {
		next = FUNC2(addr, end);
		err = FUNC4(pgd, addr, next, phys_addr, type);
		if (err)
			break;
		phys_addr += next - addr;
	} while (pgd++, addr = next, addr != end);

	return err;
}