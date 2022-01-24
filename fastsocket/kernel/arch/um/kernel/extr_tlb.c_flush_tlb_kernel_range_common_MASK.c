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
struct mm_struct {int dummy; } ;
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 int PAGE_MASK ; 
 unsigned long PAGE_SIZE ; 
 int /*<<< orphan*/  PGDIR_SIZE ; 
 int /*<<< orphan*/  PMD_SIZE ; 
 int /*<<< orphan*/  PUD_SIZE ; 
 struct mm_struct init_mm ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int,unsigned long,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (void*,unsigned long,int,int,int) ; 
 int FUNC3 (void*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (struct mm_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 

int FUNC19(unsigned long start, unsigned long end)
{
	struct mm_struct *mm;
	pgd_t *pgd;
	pud_t *pud;
	pmd_t *pmd;
	pte_t *pte;
	unsigned long addr, last;
	int updated = 0, err;

	mm = &init_mm;
	for (addr = start; addr < end;) {
		pgd = FUNC6(mm, addr);
		if (!FUNC7(*pgd)) {
			last = FUNC0(addr, PGDIR_SIZE);
			if (last > end)
				last = end;
			if (FUNC5(*pgd)) {
				updated = 1;
				err = FUNC3((void *) addr,
						      last - addr);
				if (err < 0)
					FUNC4("munmap failed, errno = %d\n",
					      -err);
			}
			addr = last;
			continue;
		}

		pud = FUNC17(pgd, addr);
		if (!FUNC18(*pud)) {
			last = FUNC0(addr, PUD_SIZE);
			if (last > end)
				last = end;
			if (FUNC16(*pud)) {
				updated = 1;
				err = FUNC3((void *) addr,
						      last - addr);
				if (err < 0)
					FUNC4("munmap failed, errno = %d\n",
					      -err);
			}
			addr = last;
			continue;
		}

		pmd = FUNC9(pud, addr);
		if (!FUNC10(*pmd)) {
			last = FUNC0(addr, PMD_SIZE);
			if (last > end)
				last = end;
			if (FUNC8(*pmd)) {
				updated = 1;
				err = FUNC3((void *) addr,
						      last - addr);
				if (err < 0)
					FUNC4("munmap failed, errno = %d\n",
					      -err);
			}
			addr = last;
			continue;
		}

		pte = FUNC13(pmd, addr);
		if (!FUNC14(*pte) || FUNC11(*pte)) {
			updated = 1;
			err = FUNC3((void *) addr,
					      PAGE_SIZE);
			if (err < 0)
				FUNC4("munmap failed, errno = %d\n",
				      -err);
			if (FUNC14(*pte))
				FUNC1(addr,
					   FUNC15(*pte) & PAGE_MASK,
					   PAGE_SIZE, 1, 1, 1);
		}
		else if (FUNC12(*pte)) {
			updated = 1;
			FUNC2((void *) addr, PAGE_SIZE, 1, 1, 1);
		}
		addr += PAGE_SIZE;
	}
	return updated;
}