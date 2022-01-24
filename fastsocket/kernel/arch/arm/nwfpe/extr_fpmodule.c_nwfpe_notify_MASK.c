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
struct thread_info {int /*<<< orphan*/  fpstate; } ;
struct notifier_block {int dummy; } ;

/* Variables and functions */
 int NOTIFY_DONE ; 
 unsigned long THREAD_NOTIFY_FLUSH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1(struct notifier_block *self, unsigned long cmd, void *v)
{
	struct thread_info *thread = v;

	if (cmd == THREAD_NOTIFY_FLUSH)
		FUNC0(&thread->fpstate);

	return NOTIFY_DONE;
}