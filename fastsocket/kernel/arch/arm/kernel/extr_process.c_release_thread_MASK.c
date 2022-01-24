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
struct thread_info {int dummy; } ;
struct task_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  THREAD_NOTIFY_RELEASE ; 
 struct thread_info* FUNC0 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct thread_info*) ; 

void FUNC2(struct task_struct *dead_task)
{
	struct thread_info *thread = FUNC0(dead_task);

	FUNC1(THREAD_NOTIFY_RELEASE, thread);
}