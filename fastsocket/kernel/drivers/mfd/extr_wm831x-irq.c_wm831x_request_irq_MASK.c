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
struct wm831x {int /*<<< orphan*/  irq_lock; int /*<<< orphan*/  dev; } ;
typedef  scalar_t__ irq_handler_t ;
struct TYPE_2__ {void* handler_data; scalar_t__ handler; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int WM831X_NUM_IRQS ; 
 int /*<<< orphan*/  FUNC0 (struct wm831x*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* wm831x_irqs ; 

int FUNC4(struct wm831x *wm831x,
		       unsigned int irq, irq_handler_t handler,
		       unsigned long flags, const char *name,
		       void *dev)
{
	int ret = 0;

	if (irq < 0 || irq >= WM831X_NUM_IRQS)
		return -EINVAL;

	FUNC2(&wm831x->irq_lock);

	if (wm831x_irqs[irq].handler) {
		FUNC1(wm831x->dev, "Already have handler for IRQ %d\n", irq);
		ret = -EINVAL;
		goto out;
	}

	wm831x_irqs[irq].handler = handler;
	wm831x_irqs[irq].handler_data = dev;

	FUNC0(wm831x, irq);

out:
	FUNC3(&wm831x->irq_lock);

	return ret;
}