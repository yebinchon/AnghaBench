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
struct irq_fd {int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct irq_fd* FUNC1 (int,int,int*) ; 
 int /*<<< orphan*/  irq_lock ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC5(int fd, int irqnum)
{
	struct irq_fd *irq;
	unsigned long flags;
	int i;

	FUNC3(&irq_lock, flags);
	irq = FUNC1(fd, irqnum, &i);
	if (irq == NULL) {
		FUNC4(&irq_lock, flags);
		return;
	}
	FUNC2(i, irq->fd);
	FUNC4(&irq_lock, flags);

	FUNC0(fd);
}