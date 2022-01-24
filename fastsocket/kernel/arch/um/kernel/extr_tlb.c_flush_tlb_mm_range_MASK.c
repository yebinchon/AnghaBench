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
struct mm_struct {int /*<<< orphan*/  mm_users; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mm_struct*,unsigned long,unsigned long,int /*<<< orphan*/ ) ; 

void FUNC2(struct mm_struct *mm, unsigned long start,
			unsigned long end)
{
	/*
	 * Don't bother flushing if this address space is about to be
	 * destroyed.
	 */
	if (FUNC0(&mm->mm_users) == 0)
		return;

	FUNC1(mm, start, end, 0);
}