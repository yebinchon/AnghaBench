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
struct task_struct {struct io_context* io_context; } ;
struct io_context {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 struct io_context* FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct task_struct* current ; 
 scalar_t__ FUNC1 (struct io_context*) ; 
 int /*<<< orphan*/  FUNC2 () ; 

struct io_context *FUNC3(gfp_t gfp_flags, int node)
{
	struct task_struct *tsk = current;
	struct io_context *ret;

	ret = tsk->io_context;
	if (FUNC1(ret))
		return ret;

	ret = FUNC0(gfp_flags, node);
	if (ret) {
		/* make sure set_task_ioprio() sees the settings above */
		FUNC2();
		tsk->io_context = ret;
	}

	return ret;
}