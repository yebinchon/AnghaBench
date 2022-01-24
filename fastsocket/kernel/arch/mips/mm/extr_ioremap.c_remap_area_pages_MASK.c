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
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  unsigned long phys_t ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 unsigned long PGDIR_MASK ; 
 unsigned long PGDIR_SIZE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  init_mm ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,unsigned long,unsigned long,unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC7(unsigned long address, phys_t phys_addr,
	phys_t size, unsigned long flags)
{
	int error;
	pgd_t * dir;
	unsigned long end = address + size;

	phys_addr -= address;
	dir = FUNC3(&init_mm, address);
	FUNC1();
	FUNC0(address >= end);
	do {
		pud_t *pud;
		pmd_t *pmd;

		error = -ENOMEM;
		pud = FUNC5(&init_mm, dir, address);
		if (!pud)
			break;
		pmd = FUNC4(&init_mm, pud, address);
		if (!pmd)
			break;
		if (FUNC6(pmd, address, end - address,
					 phys_addr + address, flags))
			break;
		error = 0;
		address = (address + PGDIR_SIZE) & PGDIR_MASK;
		dir++;
	} while (address && (address < end));
	FUNC2();
	return error;
}