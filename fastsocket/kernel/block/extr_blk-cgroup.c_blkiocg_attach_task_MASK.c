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
struct io_context {int cgroup_changed; } ;
struct cgroup {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*) ; 

__attribute__((used)) static void FUNC2(struct cgroup *cgrp, struct task_struct *tsk)
{
	struct io_context *ioc;

	FUNC0(tsk);
	ioc = tsk->io_context;
	if (ioc)
		ioc->cgroup_changed = 1;
	FUNC1(tsk);
}