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
struct mm_struct {int /*<<< orphan*/  mm_users; } ;
struct TYPE_2__ {struct mm_struct* active_mm; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* current ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,void (*) (void*),struct mm_struct*,int) ; 

void
FUNC9 (struct mm_struct *mm)
{
	FUNC6();
	/* this happens for the common case of a single-threaded fork():  */
	if (FUNC1(mm == current->active_mm && FUNC0(&mm->mm_users) == 1))
	{
		FUNC2(mm);
		FUNC7();
		return;
	}

	FUNC8(FUNC5(mm),
		(void (*)(void *))local_finish_flush_tlb_mm, mm, 1);
	FUNC3();
	FUNC2(mm);
	FUNC4();
	FUNC7();
}