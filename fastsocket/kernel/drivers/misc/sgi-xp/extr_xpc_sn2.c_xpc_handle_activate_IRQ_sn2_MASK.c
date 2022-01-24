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
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xpc_activate_IRQ_rcvd ; 
 int /*<<< orphan*/  xpc_activate_IRQ_rcvd_lock ; 
 int /*<<< orphan*/  xpc_activate_IRQ_wq ; 

__attribute__((used)) static irqreturn_t
FUNC3(int irq, void *dev_id)
{
	unsigned long irq_flags;

	FUNC0(&xpc_activate_IRQ_rcvd_lock, irq_flags);
	xpc_activate_IRQ_rcvd++;
	FUNC1(&xpc_activate_IRQ_rcvd_lock, irq_flags);

	FUNC2(&xpc_activate_IRQ_wq);
	return IRQ_HANDLED;
}