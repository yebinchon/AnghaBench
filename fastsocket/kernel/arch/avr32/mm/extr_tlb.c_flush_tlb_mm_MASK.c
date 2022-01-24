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
struct mm_struct {scalar_t__ context; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;

/* Variables and functions */
 scalar_t__ NO_CONTEXT ; 
 int /*<<< orphan*/  FUNC0 (struct mm_struct*) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 

void FUNC3(struct mm_struct *mm)
{
	/* Invalidate all TLB entries of this process by getting a new ASID */
	if (mm->context != NO_CONTEXT) {
		unsigned long flags;

		FUNC2(flags);
		mm->context = NO_CONTEXT;
		if (mm == current->mm)
			FUNC0(mm);
		FUNC1(flags);
	}
}