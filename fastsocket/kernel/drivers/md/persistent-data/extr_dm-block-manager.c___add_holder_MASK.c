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
struct task_struct {int dummy; } ;
struct stack_trace {int skip; int /*<<< orphan*/  entries; int /*<<< orphan*/  max_entries; scalar_t__ nr_entries; } ;
struct block_lock {int /*<<< orphan*/ * entries; struct stack_trace* traces; struct task_struct** holders; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_STACK ; 
 unsigned int FUNC0 (struct block_lock*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct stack_trace*) ; 

__attribute__((used)) static void FUNC3(struct block_lock *lock, struct task_struct *task)
{
	unsigned h = FUNC0(lock, NULL);
#ifdef CONFIG_DM_DEBUG_BLOCK_STACK_TRACING
	struct stack_trace *t;
#endif

	FUNC1(task);
	lock->holders[h] = task;

#ifdef CONFIG_DM_DEBUG_BLOCK_STACK_TRACING
	t = lock->traces + h;
	t->nr_entries = 0;
	t->max_entries = MAX_STACK;
	t->entries = lock->entries[h];
	t->skip = 2;
	save_stack_trace(t);
#endif
}