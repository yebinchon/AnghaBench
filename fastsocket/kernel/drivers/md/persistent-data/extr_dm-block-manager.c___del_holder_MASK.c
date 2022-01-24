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
struct block_lock {int /*<<< orphan*/ ** holders; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct block_lock*,struct task_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*) ; 

__attribute__((used)) static void FUNC2(struct block_lock *lock, struct task_struct *task)
{
	unsigned h = FUNC0(lock, task);
	lock->holders[h] = NULL;
	FUNC1(task);
}