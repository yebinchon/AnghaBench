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
struct gpio_keys_button {scalar_t__ debounce_interval; int /*<<< orphan*/  gpio; } ;
struct gpio_button_data {int /*<<< orphan*/  work; int /*<<< orphan*/  timer; struct gpio_keys_button* button; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *dev_id)
{
	struct gpio_button_data *bdata = dev_id;
	struct gpio_keys_button *button = bdata->button;

	FUNC0(irq != FUNC1(button->gpio));

	if (button->debounce_interval)
		FUNC2(&bdata->timer,
			jiffies + FUNC3(button->debounce_interval));
	else
		FUNC4(&bdata->work);

	return IRQ_HANDLED;
}