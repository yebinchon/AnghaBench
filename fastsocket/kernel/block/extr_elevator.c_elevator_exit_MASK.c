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
struct elevator_queue {int /*<<< orphan*/  kobj; int /*<<< orphan*/  sysfs_lock; TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* elevator_exit_fn ) (struct elevator_queue*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct elevator_queue*) ; 

void FUNC4(struct elevator_queue *e)
{
	FUNC1(&e->sysfs_lock);
	if (e->ops->elevator_exit_fn)
		e->ops->elevator_exit_fn(e);
	e->ops = NULL;
	FUNC2(&e->sysfs_lock);

	FUNC0(&e->kobj);
}