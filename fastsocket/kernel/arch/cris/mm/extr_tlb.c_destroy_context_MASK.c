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
struct TYPE_2__ {scalar_t__ page_id; } ;
struct mm_struct {TYPE_1__ context; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ NO_CONTEXT ; 
 int /*<<< orphan*/  FUNC1 (struct mm_struct*) ; 
 int /*<<< orphan*/ ** page_id_map ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,struct mm_struct*) ; 

void
FUNC3(struct mm_struct *mm)
{
	if(mm->context.page_id != NO_CONTEXT) {
		FUNC0(FUNC2("destroy_context %d (%p)\n", mm->context.page_id, mm));
		FUNC1(mm);  /* TODO this might be redundant ? */
		page_id_map[mm->context.page_id] = NULL;
	}
}