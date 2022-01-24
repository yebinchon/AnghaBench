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
struct vm_area_struct {struct mm_struct* vm_mm; } ;
struct mm_struct {int dummy; } ;

/* Variables and functions */
 long CKSEG0 ; 
 unsigned long PAGE_MASK ; 
 unsigned long PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int TFP_TLB_SIZE ; 
 int FUNC0 (int,struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC1 (int,struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct mm_struct*,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int FUNC5 () ; 
 long FUNC6 () ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (unsigned long) ; 

void FUNC13(struct vm_area_struct *vma, unsigned long start,
	unsigned long end)
{
	struct mm_struct *mm = vma->vm_mm;
	int cpu = FUNC7();
	unsigned long flags;
	int oldpid, newpid, size;

	if (!FUNC1(cpu, mm))
		return;

	size = (end - start + (PAGE_SIZE - 1)) >> PAGE_SHIFT;
	size = (size + 1) >> 1;

	FUNC4(flags);

	if (size > TFP_TLB_SIZE / 2) {
		FUNC2(mm, cpu);
		goto out_restore;
	}

	oldpid = FUNC5();
	newpid = FUNC0(cpu, mm);

	FUNC11(0);

	start &= PAGE_MASK;
	end += (PAGE_SIZE - 1);
	end &= PAGE_MASK;
	while (start < end) {
		signed long idx;

		FUNC12(start);
		FUNC10(start);
		start += PAGE_SIZE;
		FUNC8();
		idx = FUNC6();
		if (idx < 0)
			continue;

		FUNC10(CKSEG0 + (idx << (PAGE_SHIFT + 1)));
		FUNC9();
	}
	FUNC10(oldpid);

out_restore:
	FUNC3(flags);
}