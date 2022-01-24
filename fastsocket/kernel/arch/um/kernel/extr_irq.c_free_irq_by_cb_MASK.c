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

/* Variables and functions */
 int /*<<< orphan*/  active_fds ; 
 int /*<<< orphan*/  irq_lock ; 
 int /*<<< orphan*/  last_irq_ptr ; 
 int /*<<< orphan*/  FUNC0 (int (*) (struct irq_fd*,void*),void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(int (*test)(struct irq_fd *, void *), void *arg)
{
	unsigned long flags;

	FUNC1(&irq_lock, flags);
	FUNC0(test, arg, active_fds, &last_irq_ptr);
	FUNC2(&irq_lock, flags);
}