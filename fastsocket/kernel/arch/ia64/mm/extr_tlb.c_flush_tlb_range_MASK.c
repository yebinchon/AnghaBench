#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vm_area_struct {struct mm_struct* vm_mm; } ;
struct mm_struct {scalar_t__ context; } ;
struct TYPE_4__ {struct mm_struct* active_mm; } ;
struct TYPE_3__ {unsigned long mask; unsigned long max_bits; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* current ; 
 unsigned long FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct mm_struct*,unsigned long,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 TYPE_1__ purge ; 
 scalar_t__ FUNC8 (int) ; 

void
FUNC9 (struct vm_area_struct *vma, unsigned long start,
		 unsigned long end)
{
	struct mm_struct *mm = vma->vm_mm;
	unsigned long size = end - start;
	unsigned long nbits;

#ifndef CONFIG_SMP
	if (mm != current->active_mm) {
		mm->context = 0;
		return;
	}
#endif

	nbits = FUNC1(size + 0xfff);
	while (FUNC8 (((1UL << nbits) & purge.mask) == 0) &&
			(nbits < purge.max_bits))
		++nbits;
	if (nbits > purge.max_bits)
		nbits = purge.max_bits;
	start &= ~((1UL << nbits) - 1);

	FUNC6();
#ifdef CONFIG_SMP
	if (mm != current->active_mm || cpumask_weight(mm_cpumask(mm)) != 1) {
		platform_global_tlb_purge(mm, start, end, nbits);
		preempt_enable();
		return;
	}
#endif
	do {
		FUNC2(start, (nbits<<2));
		start += (1UL << nbits);
	} while (start < end);
	FUNC7();
	FUNC3();			/* srlz.i implies srlz.d */
}