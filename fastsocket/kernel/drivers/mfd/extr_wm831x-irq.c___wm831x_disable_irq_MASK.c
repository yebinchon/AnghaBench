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
struct wm831x_irq_data {int reg; int /*<<< orphan*/  mask; } ;
struct wm831x {int /*<<< orphan*/ * irq_masks; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wm831x_irq_data*) ; 
 struct wm831x_irq_data* wm831x_irqs ; 
 int /*<<< orphan*/  FUNC1 (struct wm831x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct wm831x *wm831x, int irq)
{
	struct wm831x_irq_data *irq_data = &wm831x_irqs[irq];

	wm831x->irq_masks[irq_data->reg - 1] |= irq_data->mask;
	FUNC1(wm831x, FUNC0(irq_data),
			 wm831x->irq_masks[irq_data->reg - 1]);
}