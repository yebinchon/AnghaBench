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
struct wm831x {int /*<<< orphan*/  irq_work; int /*<<< orphan*/  irq_wq; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC2(int irq, void *data)
{
	struct wm831x *wm831x = data;

	/* Shut the interrupt to the CPU up and schedule the actual
	 * handler; we can't check that the IRQ is asserted. */
	FUNC0(irq);

	FUNC1(wm831x->irq_wq, &wm831x->irq_work);

	return IRQ_HANDLED;
}