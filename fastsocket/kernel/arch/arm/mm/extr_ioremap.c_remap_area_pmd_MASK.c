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
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  init_mm ; 
 unsigned long FUNC0 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC2 (int /*<<< orphan*/ *,unsigned long,unsigned long,unsigned long,struct mem_type const*) ; 

__attribute__((used)) static inline int FUNC3(pgd_t *pgd, unsigned long addr,
				 unsigned long end, unsigned long phys_addr,
				 const struct mem_type *type)
{
	unsigned long next;
	pmd_t *pmd;
	int ret = 0;

	pmd = FUNC1(&init_mm, pgd, addr);
	if (!pmd)
		return -ENOMEM;

	do {
		next = FUNC0(addr, end);
		ret = FUNC2(pmd, addr, next, phys_addr, type);
		if (ret)
			return ret;
		phys_addr += next - addr;
	} while (pmd++, addr = next, addr != end);
	return ret;
}