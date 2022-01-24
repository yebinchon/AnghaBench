#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct page {int dummy; } ;
struct TYPE_5__ {unsigned long pte_high; } ;
typedef  TYPE_1__ pte_t ;
typedef  enum fixed_addresses { ____Placeholder_fixed_addresses } fixed_addresses ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int FIX_CMAP_END ; 
 int FIX_N_COLOURS ; 
 int NR_CPUS ; 
 int /*<<< orphan*/  PAGE_KERNEL ; 
 int PAGE_MASK ; 
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 unsigned long FUNC4 (int) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int kmap_coherent_pte ; 
 TYPE_1__ FUNC7 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 (TYPE_1__) ; 
 unsigned long FUNC10 () ; 
 int FUNC11 () ; 
 int FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int,TYPE_1__) ; 
 int FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (unsigned long) ; 
 int /*<<< orphan*/  FUNC21 (unsigned long) ; 
 int /*<<< orphan*/  FUNC22 (unsigned long) ; 
 int /*<<< orphan*/  FUNC23 (int) ; 
 int /*<<< orphan*/  FUNC24 (int) ; 

void *FUNC25(struct page *page, unsigned long addr)
{
	enum fixed_addresses idx;
	unsigned long vaddr, flags, entrylo;
	unsigned long old_ctx;
	pte_t pte;
	int tlbidx;

	FUNC0(FUNC3(page));

	FUNC6();
	idx = (addr >> PAGE_SHIFT) & (FIX_N_COLOURS - 1);
#ifdef CONFIG_MIPS_MT_SMTC
	idx += FIX_N_COLOURS * smp_processor_id() +
		(in_interrupt() ? (FIX_N_COLOURS * NR_CPUS) : 0);
#else
	idx += FUNC5() ? FIX_N_COLOURS : 0;
#endif
	vaddr = FUNC4(FIX_CMAP_END - idx);
	pte = FUNC7(page, PAGE_KERNEL);
#if defined(CONFIG_64BIT_PHYS_ADDR) && defined(CONFIG_CPU_MIPS32)
	entrylo = pte.pte_high;
#else
	entrylo = FUNC9(pte) >> 6;
#endif

	FUNC1(flags);
	old_ctx = FUNC10();
	FUNC20(vaddr & (PAGE_MASK << 1));
	FUNC21(entrylo);
	FUNC22(entrylo);
#ifdef CONFIG_MIPS_MT_SMTC
	set_pte(kmap_coherent_pte - (FIX_CMAP_END - idx), pte);
	/* preload TLB instead of local_flush_tlb_one() */
	mtc0_tlbw_hazard();
	tlb_probe();
	tlb_probe_hazard();
	tlbidx = read_c0_index();
	mtc0_tlbw_hazard();
	if (tlbidx < 0)
		tlb_write_random();
	else
		tlb_write_indexed();
#else
	tlbidx = FUNC12();
	FUNC24(tlbidx + 1);
	FUNC23(tlbidx);
	FUNC8();
	FUNC17();
#endif
	FUNC19();
	FUNC20(old_ctx);
	FUNC2(flags);

	return (void*) vaddr;
}