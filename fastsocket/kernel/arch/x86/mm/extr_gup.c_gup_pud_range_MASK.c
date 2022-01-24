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
struct page {int dummy; } ;
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long,unsigned long,int,struct page**,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long,unsigned long,int,struct page**,int*) ; 
 unsigned long FUNC2 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(pgd_t pgd, unsigned long addr, unsigned long end,
			int write, struct page **pages, int *nr)
{
	unsigned long next;
	pud_t *pudp;

	pudp = FUNC5(&pgd, addr);
	do {
		pud_t pud = *pudp;

		next = FUNC2(addr, end);
		if (FUNC4(pud))
			return 0;
		if (FUNC6(FUNC3(pud))) {
			if (!FUNC0(pud, addr, next, write, pages, nr))
				return 0;
		} else {
			if (!FUNC1(pud, addr, next, write, pages, nr))
				return 0;
		}
	} while (pudp++, addr = next, addr != end);

	return 1;
}