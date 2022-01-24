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
struct input_mt_slot {int dummy; } ;
struct input_dev {size_t slot; struct input_mt_slot* mt; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MT_TOOL_TYPE ; 
 int /*<<< orphan*/  ABS_MT_TRACKING_ID ; 
 int /*<<< orphan*/  EV_ABS ; 
 int /*<<< orphan*/  FUNC0 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC1 (struct input_mt_slot*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct input_dev*) ; 

void FUNC3(struct input_dev *dev,
				unsigned int tool_type, bool active)
{
	struct input_mt_slot *mt;
	int id;

	if (!dev->mt || !active) {
		FUNC0(dev, EV_ABS, ABS_MT_TRACKING_ID, -1);
		return;
	}

	mt = &dev->mt[dev->slot];
	id = FUNC1(mt, ABS_MT_TRACKING_ID);
	if (id < 0 || FUNC1(mt, ABS_MT_TOOL_TYPE) != tool_type)
		id = FUNC2(dev);

	FUNC0(dev, EV_ABS, ABS_MT_TRACKING_ID, id);
	FUNC0(dev, EV_ABS, ABS_MT_TOOL_TYPE, tool_type);
}