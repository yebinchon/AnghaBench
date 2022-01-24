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
struct slice_mask {unsigned int low_slices; unsigned int high_slices; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct mm_struct {scalar_t__ task_size; } ;

/* Variables and functions */
 scalar_t__ SLICE_LOW_TOP ; 
 unsigned long SLICE_NUM_HIGH ; 
 unsigned long SLICE_NUM_LOW ; 
 int /*<<< orphan*/  FUNC0 (struct mm_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct mm_struct*,unsigned long) ; 

__attribute__((used)) static struct slice_mask FUNC2(struct mm_struct *mm)
{
	struct slice_mask ret = { 0, 0 };
	unsigned long i;

	for (i = 0; i < SLICE_NUM_LOW; i++)
		if (!FUNC1(mm, i))
			ret.low_slices |= 1u << i;

	if (mm->task_size <= SLICE_LOW_TOP)
		return ret;

	for (i = 0; i < SLICE_NUM_HIGH; i++)
		if (!FUNC0(mm, i))
			ret.high_slices |= 1u << i;

	return ret;
}