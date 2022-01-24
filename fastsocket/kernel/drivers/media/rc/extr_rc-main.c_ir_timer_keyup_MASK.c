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
struct rc_dev {int /*<<< orphan*/  keylock; int /*<<< orphan*/  keyup_jiffies; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rc_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(unsigned long cookie)
{
	struct rc_dev *dev = (struct rc_dev *)cookie;
	unsigned long flags;

	/*
	 * ir->keyup_jiffies is used to prevent a race condition if a
	 * hardware interrupt occurs at this point and the keyup timer
	 * event is moved further into the future as a result.
	 *
	 * The timer will then be reactivated and this function called
	 * again in the future. We need to exit gracefully in that case
	 * to allow the input subsystem to do its auto-repeat magic or
	 * a keyup event might follow immediately after the keydown.
	 */
	FUNC1(&dev->keylock, flags);
	if (FUNC3(dev->keyup_jiffies))
		FUNC0(dev);
	FUNC2(&dev->keylock, flags);
}