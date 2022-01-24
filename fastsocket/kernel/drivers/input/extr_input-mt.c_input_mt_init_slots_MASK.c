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
struct input_dev {unsigned int mtsize; int /*<<< orphan*/ * mt; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MT_SLOT ; 
 int /*<<< orphan*/  ABS_MT_TRACKING_ID ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int TRKID_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int) ; 
 int /*<<< orphan*/ * FUNC3 (unsigned int,int,int /*<<< orphan*/ ) ; 

int FUNC4(struct input_dev *dev, unsigned int num_slots)
{
	int i;

	if (!num_slots)
		return 0;
	if (dev->mt)
		return dev->mtsize != num_slots ? -EINVAL : 0;

	dev->mt = FUNC3(num_slots, sizeof(struct input_mt_slot), GFP_KERNEL);
	if (!dev->mt)
		return -ENOMEM;

	dev->mtsize = num_slots;
	FUNC1(dev, ABS_MT_SLOT, 0, num_slots - 1, 0, 0);
	FUNC1(dev, ABS_MT_TRACKING_ID, 0, TRKID_MAX, 0, 0);
#if 0
	/* RHEL6: If needed, changeset 63a6404d must be backported */
	input_set_events_per_packet(dev, 6 * num_slots);
#endif

	/* Mark slots as 'unused' */
	for (i = 0; i < num_slots; i++)
		FUNC0(&dev->mt[i], ABS_MT_TRACKING_ID, -1);

	return 0;
}