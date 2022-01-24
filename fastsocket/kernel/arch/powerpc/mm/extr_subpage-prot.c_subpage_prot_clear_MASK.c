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
typedef  int /*<<< orphan*/  u32 ;
struct subpage_prot_table {unsigned long maxaddr; int /*<<< orphan*/ *** protptrs; int /*<<< orphan*/ ** low_prot; } ;
struct mm_struct {int /*<<< orphan*/  mmap_sem; int /*<<< orphan*/  pgd; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;

/* Variables and functions */
 unsigned long PAGE_SHIFT ; 
 int PTRS_PER_PTE ; 
 int SBP_L1_COUNT ; 
 int SBP_L2_COUNT ; 
 unsigned long SBP_L2_SHIFT ; 
 unsigned long SBP_L3_SHIFT ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mm_struct*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct subpage_prot_table* FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC4 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(unsigned long addr, unsigned long len)
{
	struct mm_struct *mm = current->mm;
	struct subpage_prot_table *spt = FUNC3(mm->pgd);
	u32 **spm, *spp;
	int i, nw;
	unsigned long next, limit;

	FUNC0(&mm->mmap_sem);
	limit = addr + len;
	if (limit > spt->maxaddr)
		limit = spt->maxaddr;
	for (; addr < limit; addr = next) {
		next = FUNC4(addr, limit);
		if (addr < 0x100000000) {
			spm = spt->low_prot;
		} else {
			spm = spt->protptrs[addr >> SBP_L3_SHIFT];
			if (!spm)
				continue;
		}
		spp = spm[(addr >> SBP_L2_SHIFT) & (SBP_L2_COUNT - 1)];
		if (!spp)
			continue;
		spp += (addr >> PAGE_SHIFT) & (SBP_L1_COUNT - 1);

		i = (addr >> PAGE_SHIFT) & (PTRS_PER_PTE - 1);
		nw = PTRS_PER_PTE - i;
		if (addr + (nw << PAGE_SHIFT) > next)
			nw = (next - addr) >> PAGE_SHIFT;

		FUNC2(spp, 0, nw * sizeof(u32));

		/* now flush any existing HPTEs for the range */
		FUNC1(mm, addr, nw);
	}
	FUNC5(&mm->mmap_sem);
}