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
struct mm_struct {int dummy; } ;
typedef  int /*<<< orphan*/  pte_t ;
struct TYPE_2__ {int (* hpte_updatepp ) (unsigned long,unsigned long,unsigned long,unsigned int,int,int) ;long (* hpte_insert ) (unsigned long,unsigned long,unsigned long,unsigned long,int /*<<< orphan*/ ,unsigned int,int) ;int /*<<< orphan*/  (* hpte_remove ) (unsigned long) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_FTR_COHERENT_ICACHE ; 
 unsigned long HPTES_PER_GROUP ; 
 unsigned long HPTE_R_N ; 
 int /*<<< orphan*/  HPTE_V_SECONDARY ; 
 unsigned long PAGE_SHIFT ; 
 unsigned long _PAGE_ACCESSED ; 
 unsigned long _PAGE_BUSY ; 
 unsigned long _PAGE_COHERENT ; 
 unsigned long _PAGE_DIRTY ; 
 unsigned long _PAGE_EXEC ; 
 unsigned long _PAGE_F_GIX ; 
 unsigned long _PAGE_F_SECOND ; 
 unsigned long _PAGE_GUARDED ; 
 unsigned long _PAGE_HASHPTE ; 
 unsigned long _PAGE_HPTEFLAGS ; 
 unsigned long _PAGE_HPTE_SUB0 ; 
 unsigned long _PAGE_NO_CACHE ; 
 unsigned long _PAGE_PRESENT ; 
 unsigned long _PAGE_RW ; 
 unsigned long _PAGE_WRITETHRU ; 
 unsigned long FUNC0 (unsigned long*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (struct mm_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,unsigned long,unsigned long,unsigned long,int,unsigned int,unsigned long) ; 
 unsigned long FUNC5 (unsigned long,int /*<<< orphan*/ ,unsigned long,unsigned long) ; 
 unsigned long FUNC6 (unsigned long,int,int) ; 
 unsigned long FUNC7 (unsigned long,unsigned long,int) ; 
 unsigned long htab_hash_mask ; 
 int /*<<< orphan*/ * FUNC8 (struct mm_struct*,unsigned long) ; 
 scalar_t__ FUNC9 (int) ; 
 int FUNC10 () ; 
 int /*<<< orphan*/ * mmu_huge_psizes ; 
 int FUNC11 (unsigned int) ; 
 TYPE_1__ ppc_md ; 
 unsigned long FUNC12 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (unsigned long,unsigned long,unsigned long,unsigned int,int,int) ; 
 long FUNC15 (unsigned long,unsigned long,unsigned long,unsigned long,int /*<<< orphan*/ ,unsigned int,int) ; 
 long FUNC16 (unsigned long,unsigned long,unsigned long,unsigned long,int /*<<< orphan*/ ,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC17 (unsigned long) ; 
 scalar_t__ FUNC18 (int) ; 
 int FUNC19 (unsigned long) ; 

int FUNC20(struct mm_struct *mm, unsigned long access,
		   unsigned long ea, unsigned long vsid, int local,
		   unsigned long trap)
{
	pte_t *ptep;
	unsigned long old_pte, new_pte;
	unsigned long va, rflags, pa, sz;
	long slot;
	int ssize = FUNC19(ea);
	unsigned int mmu_psize;
	int shift;

	mmu_psize = FUNC3(mm, ea);

	if (!mmu_huge_psizes[mmu_psize])
		return 1;
	ptep = FUNC8(mm, ea);

	/* Search the Linux page table for a match with va */
	va = FUNC7(ea, vsid, ssize);

	/* If no pte found send the problem up to do_page_fault
	 */
	if (FUNC18(!ptep))
		return 1;

	/* We need _PAGE_PRESENT as part of our access check */
	access |= _PAGE_PRESENT;

	/*
	 * At this point, we have a pte (old_pte) which can be used to build
	 * or update an HPTE. There are 2 cases:
	 *
	 * 1. There is a valid (present) pte with no associated HPTE (this is 
	 *	the most common case)
	 * 2. There is a valid (present) pte with an associated HPTE. The
	 *	current values of the pp bits in the HPTE prevent access
	 *	because we are doing software DIRTY bit management and the
	 *	page is currently not DIRTY. 
	 */
	do {
		old_pte = FUNC13(*ptep);
		/* If PTE busy, retry the access */
		if (FUNC18(old_pte & _PAGE_BUSY))
			return 0;
		/* If PTE permissions don't match, take page fault */
		if (FUNC18(access & ~old_pte))
			return 1;
		/* Try to lock the PTE, add ACCESSED and DIRTY if it was
		 * a write access */
		new_pte = old_pte | _PAGE_BUSY | _PAGE_ACCESSED;
		if (access & _PAGE_RW)
			new_pte |= _PAGE_DIRTY;
	} while(old_pte != FUNC0((unsigned long *)ptep,
					 old_pte, new_pte));

	rflags = 0x2 | (!(new_pte & _PAGE_RW));
 	/* _PAGE_EXEC -> HW_NO_EXEC since it's inverted */
	rflags |= ((new_pte & _PAGE_EXEC) ? 0 : HPTE_R_N);
	shift = FUNC11(mmu_psize);
	sz = ((1UL) << shift);
	if (!FUNC2(CPU_FTR_COHERENT_ICACHE))
		/* No CPU has hugepages but lacks no execute, so we
		 * don't need to worry about that case */
		rflags = FUNC5(rflags, FUNC1(old_pte),
						       trap, sz);

	/* Check if pte already has an hpte (case 2) */
	if (FUNC18(old_pte & _PAGE_HASHPTE)) {
		/* There MIGHT be an HPTE for this pte */
		unsigned long hash, slot;

		hash = FUNC6(va, shift, ssize);
		if (old_pte & _PAGE_F_SECOND)
			hash = ~hash;
		slot = (hash & htab_hash_mask) * HPTES_PER_GROUP;
		slot += (old_pte & _PAGE_F_GIX) >> 12;

		if (ppc_md.hpte_updatepp(slot, rflags, va, mmu_psize,
					 ssize, local) == -1)
			old_pte &= ~_PAGE_HPTEFLAGS;
	}

	if (FUNC9(!(old_pte & _PAGE_HASHPTE))) {
		unsigned long hash = FUNC6(va, shift, ssize);
		unsigned long hpte_group;

		pa = FUNC12(FUNC1(old_pte)) << PAGE_SHIFT;

repeat:
		hpte_group = ((hash & htab_hash_mask) *
			      HPTES_PER_GROUP) & ~0x7UL;

		/* clear HPTE slot informations in new PTE */
#ifdef CONFIG_PPC_64K_PAGES
		new_pte = (new_pte & ~_PAGE_HPTEFLAGS) | _PAGE_HPTE_SUB0;
#else
		new_pte = (new_pte & ~_PAGE_HPTEFLAGS) | _PAGE_HASHPTE;
#endif
		/* Add in WIMG bits */
		rflags |= (new_pte & (_PAGE_WRITETHRU | _PAGE_NO_CACHE |
				      _PAGE_COHERENT | _PAGE_GUARDED));

		/* Insert into the hash table, primary slot */
		slot = ppc_md.hpte_insert(hpte_group, va, pa, rflags, 0,
					  mmu_psize, ssize);

		/* Primary is full, try the secondary */
		if (FUNC18(slot == -1)) {
			hpte_group = ((~hash & htab_hash_mask) *
				      HPTES_PER_GROUP) & ~0x7UL; 
			slot = ppc_md.hpte_insert(hpte_group, va, pa, rflags,
						  HPTE_V_SECONDARY,
						  mmu_psize, ssize);
			if (slot == -1) {
				if (FUNC10() & 0x1)
					hpte_group = ((hash & htab_hash_mask) *
						      HPTES_PER_GROUP)&~0x7UL;

				ppc_md.hpte_remove(hpte_group);
				goto repeat;
                        }
		}

		/*
		 * Hypervisor failure. Restore old pte and return -1
		 * similar to __hash_page_*
		 */
		if (FUNC18(slot == -2)) {
			*ptep = FUNC1(old_pte);
			FUNC4(ea, access, vsid, trap, ssize,
					   mmu_psize, old_pte);
			return -1;
		}

		new_pte |= (slot << 12) & (_PAGE_F_SECOND | _PAGE_F_GIX);
	}

	/*
	 * No need to use ldarx/stdcx here
	 */
	*ptep = FUNC1(new_pte & ~_PAGE_BUSY);
	return 0;
}