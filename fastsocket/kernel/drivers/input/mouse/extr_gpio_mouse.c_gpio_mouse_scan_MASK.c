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
struct input_polled_dev {struct input_dev* input; struct gpio_mouse_platform_data* private; } ;
struct input_dev {int dummy; } ;
struct gpio_mouse_platform_data {scalar_t__ bleft; int polarity; scalar_t__ bmiddle; scalar_t__ bright; scalar_t__ right; scalar_t__ left; scalar_t__ down; scalar_t__ up; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTN_LEFT ; 
 int /*<<< orphan*/  BTN_MIDDLE ; 
 int /*<<< orphan*/  BTN_RIGHT ; 
 int /*<<< orphan*/  REL_X ; 
 int /*<<< orphan*/  REL_Y ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*) ; 

__attribute__((used)) static void FUNC4(struct input_polled_dev *dev)
{
	struct gpio_mouse_platform_data *gpio = dev->private;
	struct input_dev *input = dev->input;
	int x, y;

	if (gpio->bleft >= 0)
		FUNC1(input, BTN_LEFT,
				FUNC0(gpio->bleft) ^ gpio->polarity);
	if (gpio->bmiddle >= 0)
		FUNC1(input, BTN_MIDDLE,
				FUNC0(gpio->bmiddle) ^ gpio->polarity);
	if (gpio->bright >= 0)
		FUNC1(input, BTN_RIGHT,
				FUNC0(gpio->bright) ^ gpio->polarity);

	x = (FUNC0(gpio->right) ^ gpio->polarity)
		- (FUNC0(gpio->left) ^ gpio->polarity);
	y = (FUNC0(gpio->down) ^ gpio->polarity)
		- (FUNC0(gpio->up) ^ gpio->polarity);

	FUNC2(input, REL_X, x);
	FUNC2(input, REL_Y, y);
	FUNC3(input);
}