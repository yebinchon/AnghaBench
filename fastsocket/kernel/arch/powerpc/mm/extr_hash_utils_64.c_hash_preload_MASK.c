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
struct TYPE_2__ {int /*<<< orphan*/  user_psize; int /*<<< orphan*/  id; } ;
struct mm_struct {TYPE_1__ context; void* pgd; } ;
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct mm_struct*,void*,unsigned long,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  MMU_PAGE_64K ; 
 scalar_t__ FUNC2 (unsigned long) ; 
 scalar_t__ USER_REGION_ID ; 
 int _PAGE_4K_PFN ; 
 int _PAGE_NO_CACHE ; 
 int FUNC3 (unsigned long,unsigned long,unsigned long,int /*<<< orphan*/ *,unsigned long,int,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (unsigned long,unsigned long,unsigned long,int /*<<< orphan*/ *,unsigned long,int,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (void*,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct mm_struct*,unsigned long) ; 
 unsigned long FUNC9 (int /*<<< orphan*/ ,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC10 (unsigned long,unsigned long,unsigned long,unsigned long,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (struct mm_struct*) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (void*,unsigned long) ; 
 scalar_t__ FUNC17 (int) ; 
 int FUNC18 (unsigned long) ; 

void FUNC19(struct mm_struct *mm, unsigned long ea,
		  unsigned long access, unsigned long trap)
{
	unsigned long vsid;
	void *pgdir;
	pte_t *ptep;
	unsigned long flags;
	int rc, ssize, local = 0;

	FUNC0(FUNC2(ea) != USER_REGION_ID);

#ifdef CONFIG_PPC_MM_SLICES
	/* We only prefault standard pages for now */
	if (unlikely(get_slice_psize(mm, ea) != mm->context.user_psize))
		return;
#endif

	FUNC1("hash_preload(mm=%p, mm->pgdir=%p, ea=%016lx, access=%lx,"
		" trap=%lx\n", mm, mm->pgd, ea, access, trap);

	/* Get Linux PTE if available */
	pgdir = mm->pgd;
	if (pgdir == NULL)
		return;
	ptep = FUNC7(pgdir, ea);
	if (!ptep)
		return;

#ifdef CONFIG_PPC_64K_PAGES
	/* If either _PAGE_4K_PFN or _PAGE_NO_CACHE is set (and we are on
	 * a 64K kernel), then we don't preload, hash_page() will take
	 * care of it once we actually try to access the page.
	 * That way we don't have to duplicate all of the logic for segment
	 * page size demotion here
	 */
	if (pte_val(*ptep) & (_PAGE_4K_PFN | _PAGE_NO_CACHE))
		return;
#endif /* CONFIG_PPC_64K_PAGES */

	/* Get VSID */
	ssize = FUNC18(ea);
	vsid = FUNC9(mm->context.id, ea, ssize);

	/* Hash doesn't like irqs */
	FUNC12(flags);

	/* Is that local to this CPU ? */
	if (FUNC5(FUNC13(mm), FUNC6(FUNC15())))
		local = 1;

	/* Hash it in */
#ifdef CONFIG_PPC_HAS_HASH_64K
	if (mm->context.user_psize == MMU_PAGE_64K)
		rc = __hash_page_64K(ea, access, vsid, ptep, trap, local, ssize);
	else
#endif /* CONFIG_PPC_HAS_HASH_64K */
		rc = FUNC3(ea, access, vsid, ptep, trap, local, ssize,
				    FUNC16(pgdir, ea));

	/* Dump some info in case of hash insertion failure, they should
	 * never happen so it is really useful to know if/when they do
	 */
	if (rc == -1)
		FUNC10(ea, access, vsid, trap, ssize,
				   mm->context.user_psize, FUNC14(*ptep));

	FUNC11(flags);
}