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
struct wm831x_irq_data {int /*<<< orphan*/  mask; int /*<<< orphan*/  handler_data; int /*<<< orphan*/  (* handler ) (int,int /*<<< orphan*/ ) ;} ;
struct wm831x {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wm831x*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct wm831x_irq_data*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct wm831x_irq_data* wm831x_irqs ; 
 int /*<<< orphan*/  FUNC4 (struct wm831x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct wm831x *wm831x, int irq, int status)
{
	struct wm831x_irq_data *irq_data = &wm831x_irqs[irq];

	if (irq_data->handler) {
		irq_data->handler(irq, irq_data->handler_data);
		FUNC4(wm831x, FUNC2(irq_data),
				 irq_data->mask);
	} else {
		FUNC1(wm831x->dev, "Unhandled IRQ %d, masking\n", irq);
		FUNC0(wm831x, irq);
	}
}