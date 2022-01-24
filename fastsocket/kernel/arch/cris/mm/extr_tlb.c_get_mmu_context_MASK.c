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
 scalar_t__ NO_CONTEXT ; 
 int /*<<< orphan*/  FUNC0 (struct mm_struct*) ; 

void
FUNC1(struct mm_struct *mm)
{
	if(mm->context.page_id == NO_CONTEXT)
		FUNC0(mm);
}