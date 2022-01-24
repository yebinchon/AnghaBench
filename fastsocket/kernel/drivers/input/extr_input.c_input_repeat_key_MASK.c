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
struct input_dev {int /*<<< orphan*/  event_lock; scalar_t__* rep; int /*<<< orphan*/  timer; scalar_t__ sync; int /*<<< orphan*/  repeat_key; int /*<<< orphan*/  keybit; int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  EV_SYN ; 
 int /*<<< orphan*/  KEY_MAX ; 
 size_t REP_PERIOD ; 
 int /*<<< orphan*/  SYN_REPORT ; 
 int /*<<< orphan*/  FUNC0 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(unsigned long data)
{
	struct input_dev *dev = (void *) data;
	unsigned long flags;

	FUNC4(&dev->event_lock, flags);

	if (FUNC6(dev->repeat_key, dev->key) &&
	    FUNC1(dev->repeat_key, dev->keybit, KEY_MAX)) {

		FUNC0(dev, EV_KEY, dev->repeat_key, 2);

		if (dev->sync) {
			/*
			 * Only send SYN_REPORT if we are not in a middle
			 * of driver parsing a new hardware packet.
			 * Otherwise assume that the driver will send
			 * SYN_REPORT once it's done.
			 */
			FUNC0(dev, EV_SYN, SYN_REPORT, 1);
		}

		if (dev->rep[REP_PERIOD])
			FUNC2(&dev->timer, jiffies +
					FUNC3(dev->rep[REP_PERIOD]));
	}

	FUNC5(&dev->event_lock, flags);
}