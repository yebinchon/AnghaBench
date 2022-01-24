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
 int CKSEG0 ; 
 unsigned long PAGE_MASK ; 
 int PAGE_SHIFT ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int FUNC4 () ; 
 long FUNC5 () ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (unsigned long) ; 

void FUNC12(struct vm_area_struct *vma, unsigned long page)
{
	int cpu = FUNC6();
	unsigned long flags;
	int oldpid, newpid;
	signed long idx;

	if (!FUNC1(cpu, vma->vm_mm))
		return;

	newpid = FUNC0(cpu, vma->vm_mm);
	page &= PAGE_MASK;
	FUNC3(flags);
	oldpid = FUNC4();
	FUNC11(page);
	FUNC9(newpid);
	FUNC7();
	idx = FUNC5();
	if (idx < 0)
		goto finish;

	FUNC10(0);
	FUNC9(CKSEG0 + (idx << (PAGE_SHIFT + 1)));
	FUNC8();

finish:
	FUNC9(oldpid);
	FUNC2(flags);
}