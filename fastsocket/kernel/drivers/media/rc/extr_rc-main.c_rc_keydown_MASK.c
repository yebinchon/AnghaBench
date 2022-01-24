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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct rc_dev {int /*<<< orphan*/  keylock; scalar_t__ keyup_jiffies; int /*<<< orphan*/  timer_keyup; scalar_t__ keypressed; } ;

/* Variables and functions */
 int /*<<< orphan*/  IR_KEYPRESS_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct rc_dev*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rc_dev*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC6(struct rc_dev *dev, int scancode, u8 toggle)
{
	unsigned long flags;
	u32 keycode = FUNC3(dev, scancode);

	FUNC4(&dev->keylock, flags);
	FUNC0(dev, scancode, keycode, toggle);

	if (dev->keypressed) {
		dev->keyup_jiffies = jiffies + FUNC2(IR_KEYPRESS_TIMEOUT);
		FUNC1(&dev->timer_keyup, dev->keyup_jiffies);
	}
	FUNC5(&dev->keylock, flags);
}