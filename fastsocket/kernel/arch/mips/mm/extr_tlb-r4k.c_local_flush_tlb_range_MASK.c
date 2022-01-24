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
struct TYPE_2__ {int tlbsize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FLUSH_ITLB ; 
 int PAGE_MASK ; 
 unsigned long PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int FUNC2 (int) ; 
 int FUNC3 (int,struct mm_struct*) ; 
 scalar_t__ FUNC4 (int,struct mm_struct*) ; 
 TYPE_1__ current_cpu_data ; 
 int /*<<< orphan*/  FUNC5 (struct mm_struct*,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 () ; 
 int FUNC8 () ; 
 int FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 

void FUNC17(struct vm_area_struct *vma, unsigned long start,
	unsigned long end)
{
	struct mm_struct *mm = vma->vm_mm;
	int cpu = FUNC9();

	if (FUNC4(cpu, mm) != 0) {
		unsigned long size, flags;

		FUNC0(flags);
		size = (end - start + (PAGE_SIZE - 1)) >> PAGE_SHIFT;
		size = (size + 1) >> 1;
		if (size <= current_cpu_data.tlbsize/2) {
			int oldpid = FUNC7();
			int newpid = FUNC3(cpu, mm);

			start &= (PAGE_MASK << 1);
			end += ((PAGE_SIZE << 1) - 1);
			end &= (PAGE_MASK << 1);
			while (start < end) {
				int idx;

				FUNC14(start | newpid);
				start += (PAGE_SIZE << 1);
				FUNC6();
				FUNC10();
				FUNC11();
				idx = FUNC8();
				FUNC15(0);
				FUNC16(0);
				if (idx < 0)
					continue;
				/* Make sure all entries differ. */
				FUNC14(FUNC2(idx));
				FUNC6();
				FUNC12();
			}
			FUNC13();
			FUNC14(oldpid);
		} else {
			FUNC5(mm, cpu);
		}
		FLUSH_ITLB;
		FUNC1(flags);
	}
}