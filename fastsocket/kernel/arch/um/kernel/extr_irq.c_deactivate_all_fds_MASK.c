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
struct irq_fd {int /*<<< orphan*/  fd; struct irq_fd* next; } ;

/* Variables and functions */
 struct irq_fd* active_fds ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 

int FUNC2(void)
{
	struct irq_fd *irq;
	int err;

	for (irq = active_fds; irq != NULL; irq = irq->next) {
		err = FUNC0(irq->fd);
		if (err)
			return err;
	}
	/* If there is a signal already queued, after unblocking ignore it */
	FUNC1();

	return 0;
}