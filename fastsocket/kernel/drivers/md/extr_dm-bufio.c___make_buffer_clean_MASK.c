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
struct dm_buffer {int /*<<< orphan*/  state; int /*<<< orphan*/  hold_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  B_READING ; 
 int /*<<< orphan*/  B_WRITING ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC1 (struct dm_buffer*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  do_io_schedule ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct dm_buffer *b)
{
	FUNC0(b->hold_count);

	if (!b->state)	/* fast case */
		return;

	FUNC2(&b->state, B_READING, do_io_schedule, TASK_UNINTERRUPTIBLE);
	FUNC1(b, NULL);
	FUNC2(&b->state, B_WRITING, do_io_schedule, TASK_UNINTERRUPTIBLE);
}