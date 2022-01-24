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
struct vm_area_struct {int /*<<< orphan*/  vm_mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct vm_area_struct*) ; 
 int PAGE_MASK ; 
 int FUNC3 (int) ; 
 int FUNC4 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ) ; 
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

void FUNC17(struct vm_area_struct *vma, unsigned long page)
{
	int cpu = FUNC9();

	if (FUNC5(cpu, vma->vm_mm) != 0) {
		unsigned long flags;
		int oldpid, newpid, idx;

		newpid = FUNC4(cpu, vma->vm_mm);
		page &= (PAGE_MASK << 1);
		FUNC0(flags);
		oldpid = FUNC7();
		FUNC14(page | newpid);
		FUNC6();
		FUNC10();
		FUNC11();
		idx = FUNC8();
		FUNC15(0);
		FUNC16(0);
		if (idx < 0)
			goto finish;
		/* Make sure all entries differ. */
		FUNC14(FUNC3(idx));
		FUNC6();
		FUNC12();
		FUNC13();

	finish:
		FUNC14(oldpid);
		FUNC2(vma);
		FUNC1(flags);
	}
}