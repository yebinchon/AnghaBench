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
struct TYPE_3__ {scalar_t__* pages; } ;
struct TYPE_4__ {int entry_count; TYPE_1__ u; } ;
struct mm_context {TYPE_2__ ldt; } ;

/* Variables and functions */
 int LDT_DIRECT_ENTRIES ; 
 int LDT_ENTRIES_PER_PAGE ; 
 int /*<<< orphan*/  FUNC0 (long) ; 
 int /*<<< orphan*/  ptrace_ldt ; 

void FUNC1(struct mm_context *mm)
{
	int i;

	if (!ptrace_ldt && mm->ldt.entry_count > LDT_DIRECT_ENTRIES) {
		i = mm->ldt.entry_count / LDT_ENTRIES_PER_PAGE;
		while (i-- > 0)
			FUNC0((long) mm->ldt.u.pages[i]);
	}
	mm->ldt.entry_count = 0;
}