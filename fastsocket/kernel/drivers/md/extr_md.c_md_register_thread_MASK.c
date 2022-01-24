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
struct mddev {int dummy; } ;
struct md_thread {void (* run ) (struct md_thread*) ;int /*<<< orphan*/  tsk; struct mddev* mddev; int /*<<< orphan*/  timeout; int /*<<< orphan*/  wqueue; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX_SCHEDULE_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct md_thread*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct md_thread*,char*,int /*<<< orphan*/ ,char const*) ; 
 struct md_thread* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  md_thread ; 
 int /*<<< orphan*/  FUNC5 (struct mddev*) ; 

struct md_thread *FUNC6(void (*run) (struct md_thread *),
		struct mddev *mddev, const char *name)
{
	struct md_thread *thread;

	thread = FUNC4(sizeof(struct md_thread), GFP_KERNEL);
	if (!thread)
		return NULL;

	FUNC1(&thread->wqueue);

	thread->run = run;
	thread->mddev = mddev;
	thread->timeout = MAX_SCHEDULE_TIMEOUT;
	thread->tsk = FUNC3(md_thread, thread,
				  "%s_%s",
				  FUNC5(thread->mddev),
				  name);
	if (FUNC0(thread->tsk)) {
		FUNC2(thread);
		return NULL;
	}
	return thread;
}