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
struct vm_area_struct {int dummy; } ;
struct mm_struct {int /*<<< orphan*/  mmap_sem; } ;
struct gru_thread_state {int /*<<< orphan*/  ts_ctxlock; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long,struct vm_area_struct*) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct gru_thread_state* FUNC2 (struct vm_area_struct*,int /*<<< orphan*/ ) ; 
 struct vm_area_struct* FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct gru_thread_state *FUNC6(unsigned long vaddr)
{
	struct mm_struct *mm = current->mm;
	struct vm_area_struct *vma;
	struct gru_thread_state *gts = NULL;

	FUNC1(&mm->mmap_sem);
	vma = FUNC3(vaddr);
	if (vma)
		gts = FUNC2(vma, FUNC0(vaddr, vma));
	if (gts)
		FUNC4(&gts->ts_ctxlock);
	else
		FUNC5(&mm->mmap_sem);
	return gts;
}