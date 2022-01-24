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
struct unw_frame_info {int dummy; } ;
struct task_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct unw_frame_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct unw_frame_info*,struct task_struct*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  (*) (struct unw_frame_info*,int /*<<< orphan*/ *),int /*<<< orphan*/ *) ; 

void
FUNC3 (struct task_struct *task, unsigned long *sp)
{
	if (!task)
		FUNC2(ia64_do_show_stack, NULL);
	else {
		struct unw_frame_info info;

		FUNC1(&info, task);
		FUNC0(&info, NULL);
	}
}