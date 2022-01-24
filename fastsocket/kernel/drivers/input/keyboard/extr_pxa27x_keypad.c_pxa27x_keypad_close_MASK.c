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
struct pxa27x_keypad {int /*<<< orphan*/  clk; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct pxa27x_keypad* FUNC1 (struct input_dev*) ; 

__attribute__((used)) static void FUNC2(struct input_dev *dev)
{
	struct pxa27x_keypad *keypad = FUNC1(dev);

	/* Disable clock unit */
	FUNC0(keypad->clk);
}