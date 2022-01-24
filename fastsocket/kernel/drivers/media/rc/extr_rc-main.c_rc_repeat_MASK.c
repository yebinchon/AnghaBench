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
struct rc_dev {int /*<<< orphan*/  keylock; scalar_t__ keyup_jiffies; int /*<<< orphan*/  timer_keyup; int /*<<< orphan*/  keypressed; int /*<<< orphan*/  last_scancode; int /*<<< orphan*/  input_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_MSC ; 
 int /*<<< orphan*/  IR_KEYPRESS_TIMEOUT ; 
 int /*<<< orphan*/  MSC_SCAN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC5(struct rc_dev *dev)
{
	unsigned long flags;

	FUNC3(&dev->keylock, flags);

	FUNC0(dev->input_dev, EV_MSC, MSC_SCAN, dev->last_scancode);

	if (!dev->keypressed)
		goto out;

	dev->keyup_jiffies = jiffies + FUNC2(IR_KEYPRESS_TIMEOUT);
	FUNC1(&dev->timer_keyup, dev->keyup_jiffies);

out:
	FUNC4(&dev->keylock, flags);
}