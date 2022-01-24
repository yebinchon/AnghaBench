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
struct wm831x {int /*<<< orphan*/  irq_lock; } ;
struct TYPE_2__ {int /*<<< orphan*/ * handler_data; int /*<<< orphan*/ * handler; } ;

/* Variables and functions */
 unsigned int WM831X_NUM_IRQS ; 
 int /*<<< orphan*/  FUNC0 (struct wm831x*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* wm831x_irqs ; 

void FUNC3(struct wm831x *wm831x, unsigned int irq, void *data)
{
	if (irq < 0 || irq >= WM831X_NUM_IRQS)
		return;

	FUNC1(&wm831x->irq_lock);

	wm831x_irqs[irq].handler = NULL;
	wm831x_irqs[irq].handler_data = NULL;

	FUNC0(wm831x, irq);

	FUNC2(&wm831x->irq_lock);
}