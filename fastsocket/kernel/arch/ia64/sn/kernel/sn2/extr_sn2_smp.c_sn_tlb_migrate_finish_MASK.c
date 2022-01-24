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
struct TYPE_2__ {struct mm_struct* mm; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC1 (struct mm_struct*) ; 

void FUNC2(struct mm_struct *mm)
{
	/* flush_tlb_mm is inefficient if more than 1 users of mm */
	if (mm == current->mm && mm && FUNC0(&mm->mm_users) == 1)
		FUNC1(mm);
}