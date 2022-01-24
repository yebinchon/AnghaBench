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
struct TYPE_2__ {unsigned long pfn; } ;
struct virtqueue {unsigned long eventfd; scalar_t__ thread; TYPE_1__ config; } ;
typedef  scalar_t__ pid_t ;
typedef  int /*<<< orphan*/  args ;

/* Variables and functions */
 int CLONE_VM ; 
 unsigned long LHREQ_EVENTFD ; 
 int SIGCHLD ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,int,struct virtqueue*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  do_thread ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long FUNC4 () ; 
 int /*<<< orphan*/  lguest_fd ; 
 char* FUNC5 (int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,unsigned long**,int) ; 

__attribute__((used)) static void FUNC7(struct virtqueue *vq)
{
	/*
	 * Create stack for thread.  Since the stack grows upwards, we point
	 * the stack pointer to the end of this region.
	 */
	char *stack = FUNC5(32768);
	unsigned long args[] = { LHREQ_EVENTFD,
				 vq->config.pfn*FUNC4(), 0 };

	/* Create a zero-initialized eventfd. */
	vq->eventfd = FUNC3(0, 0);
	if (vq->eventfd < 0)
		FUNC2(1, "Creating eventfd");
	args[2] = vq->eventfd;

	/*
	 * Attach an eventfd to this virtqueue: it will go off when the Guest
	 * does an LHCALL_NOTIFY for this vq.
	 */
	if (FUNC6(lguest_fd, &args, sizeof(args)) != 0)
		FUNC2(1, "Attaching eventfd");

	/*
	 * CLONE_VM: because it has to access the Guest memory, and SIGCHLD so
	 * we get a signal if it dies.
	 */
	vq->thread = FUNC0(do_thread, stack + 32768, CLONE_VM | SIGCHLD, vq);
	if (vq->thread == (pid_t)-1)
		FUNC2(1, "Creating clone");

	/* We close our local copy now the child has it. */
	FUNC1(vq->eventfd);
}