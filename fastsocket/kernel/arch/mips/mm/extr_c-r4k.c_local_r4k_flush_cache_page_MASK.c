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
struct vm_area_struct {int vm_flags; struct mm_struct* vm_mm; } ;
struct page {int dummy; } ;
struct mm_struct {int dummy; } ;
struct flush_cache_page_args {unsigned long addr; int /*<<< orphan*/  pfn; struct vm_area_struct* vma; } ;
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgd_t ;
struct TYPE_2__ {struct mm_struct* active_mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  KM_USER0 ; 
 unsigned long PAGE_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int VM_EXEC ; 
 int _PAGE_VALID ; 
 scalar_t__ FUNC1 (int,struct mm_struct*) ; 
 scalar_t__ cpu_has_dc_aliases ; 
 int /*<<< orphan*/  cpu_has_ic_fills_f_dc ; 
 scalar_t__ cpu_has_vtag_icache ; 
 int /*<<< orphan*/  cpu_icache_snoops_remote_store ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC2 (struct mm_struct*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mm_struct*) ; 
 void* FUNC4 (struct page*,int /*<<< orphan*/ ) ; 
 void* FUNC5 (struct page*,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (struct page*) ; 
 struct page* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (struct mm_struct*,unsigned long) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (unsigned long) ; 
 int /*<<< orphan*/  FUNC17 (unsigned long) ; 
 int /*<<< orphan*/  FUNC18 (unsigned long) ; 
 int FUNC19 () ; 

__attribute__((used)) static inline void FUNC20(void *args)
{
	struct flush_cache_page_args *fcp_args = args;
	struct vm_area_struct *vma = fcp_args->vma;
	unsigned long addr = fcp_args->addr;
	struct page *page = FUNC9(fcp_args->pfn);
	int exec = vma->vm_flags & VM_EXEC;
	struct mm_struct *mm = vma->vm_mm;
	int map_coherent = 0;
	pgd_t *pgdp;
	pud_t *pudp;
	pmd_t *pmdp;
	pte_t *ptep;
	void *vaddr;

	/*
	 * If ownes no valid ASID yet, cannot possibly have gotten
	 * this page into the cache.
	 */
	if (!FUNC3(mm))
		return;

	addr &= PAGE_MASK;
	pgdp = FUNC10(mm, addr);
	pudp = FUNC15(pgdp, addr);
	pmdp = FUNC11(pudp, addr);
	ptep = FUNC12(pmdp, addr);

	/*
	 * If the page isn't marked valid, the page cannot possibly be
	 * in the cache.
	 */
	if (!(FUNC13(*ptep)))
		return;

	if ((mm == current->active_mm) && (FUNC14(*ptep) & _PAGE_VALID))
		vaddr = NULL;
	else {
		/*
		 * Use kmap_coherent or kmap_atomic to do flushes for
		 * another ASID than the current one.
		 */
		map_coherent = (cpu_has_dc_aliases &&
				FUNC8(page) && !FUNC0(page));
		if (map_coherent)
			vaddr = FUNC5(page, addr);
		else
			vaddr = FUNC4(page, KM_USER0);
		addr = (unsigned long)vaddr;
	}

	if (cpu_has_dc_aliases || (exec && !cpu_has_ic_fills_f_dc)) {
		FUNC16(addr);
		if (exec && !cpu_icache_snoops_remote_store)
			FUNC18(addr);
	}
	if (exec) {
		if (vaddr && cpu_has_vtag_icache && mm == current->active_mm) {
			int cpu = FUNC19();

			if (FUNC1(cpu, mm) != 0)
				FUNC2(mm, cpu);
		} else
			FUNC17(addr);
	}

	if (vaddr) {
		if (map_coherent)
			FUNC7();
		else
			FUNC6(vaddr, KM_USER0);
	}
}