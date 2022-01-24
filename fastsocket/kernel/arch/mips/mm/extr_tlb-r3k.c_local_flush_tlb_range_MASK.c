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
struct vm_area_struct {struct mm_struct* vm_mm; } ;
struct mm_struct {int dummy; } ;
struct TYPE_2__ {unsigned long tlbsize; } ;

/* Variables and functions */
 int ASID_MASK ; 
 int KSEG0 ; 
 unsigned long PAGE_MASK ; 
 unsigned long PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int FUNC0 (int,struct mm_struct*) ; 
 TYPE_1__ current_cpu_data ; 
 int /*<<< orphan*/  FUNC1 (struct mm_struct*,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,unsigned long,unsigned long) ; 
 int FUNC5 () ; 
 int FUNC6 () ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

void FUNC12(struct vm_area_struct *vma, unsigned long start,
			   unsigned long end)
{
	struct mm_struct *mm = vma->vm_mm;
	int cpu = FUNC7();

	if (FUNC0(cpu, mm) != 0) {
		unsigned long size, flags;

#ifdef DEBUG_TLB
		printk("[tlbrange<%lu,0x%08lx,0x%08lx>]",
			cpu_context(cpu, mm) & ASID_MASK, start, end);
#endif
		FUNC3(flags);
		size = (end - start + (PAGE_SIZE - 1)) >> PAGE_SHIFT;
		if (size <= current_cpu_data.tlbsize) {
			int oldpid = FUNC5() & ASID_MASK;
			int newpid = FUNC0(cpu, mm) & ASID_MASK;

			start &= PAGE_MASK;
			end += PAGE_SIZE - 1;
			end &= PAGE_MASK;
			while (start < end) {
				int idx;

				FUNC10(start | newpid);
				start += PAGE_SIZE;	/* BARRIER */
				FUNC8();
				idx = FUNC6();
				FUNC11(0);
				FUNC10(KSEG0);
				if (idx < 0)		/* BARRIER */
					continue;
				FUNC9();
			}
			FUNC10(oldpid);
		} else {
			FUNC1(mm, cpu);
		}
		FUNC2(flags);
	}
}