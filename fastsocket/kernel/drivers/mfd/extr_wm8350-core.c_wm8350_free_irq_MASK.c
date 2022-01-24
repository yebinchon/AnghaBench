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
struct wm8350 {int /*<<< orphan*/  irq_mutex; TYPE_1__* irq; } ;
struct TYPE_2__ {int /*<<< orphan*/ * handler; } ;

/* Variables and functions */
 int EINVAL ; 
 int WM8350_NUM_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(struct wm8350 *wm8350, int irq)
{
	if (irq < 0 || irq > WM8350_NUM_IRQ)
		return -EINVAL;

	FUNC0(&wm8350->irq_mutex);
	wm8350->irq[irq].handler = NULL;
	FUNC1(&wm8350->irq_mutex);
	return 0;
}