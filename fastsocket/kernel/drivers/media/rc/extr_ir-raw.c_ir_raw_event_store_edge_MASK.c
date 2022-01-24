#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct rc_dev {TYPE_1__* raw; } ;
typedef  scalar_t__ s64 ;
typedef  int /*<<< orphan*/  ktime_t ;
typedef  enum raw_event_type { ____Placeholder_raw_event_type } raw_event_type ;
struct TYPE_6__ {int pulse; scalar_t__ duration; } ;
struct TYPE_5__ {int last_type; int /*<<< orphan*/  last_event; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__) ; 
 int EINVAL ; 
 scalar_t__ IR_MAX_DURATION ; 
 int IR_PULSE ; 
 int IR_SPACE ; 
 int IR_START_EVENT ; 
 TYPE_2__ ev ; 
 int /*<<< orphan*/  FUNC1 (struct rc_dev*) ; 
 int FUNC2 (struct rc_dev*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(struct rc_dev *dev, enum raw_event_type type)
{
	ktime_t			now;
	s64			delta; /* ns */
	FUNC0(ev);
	int			rc = 0;

	if (!dev->raw)
		return -EINVAL;

	now = FUNC3();
	delta = FUNC5(FUNC4(now, dev->raw->last_event));

	/* Check for a long duration since last event or if we're
	 * being called for the first time, note that delta can't
	 * possibly be negative.
	 */
	if (delta > IR_MAX_DURATION || !dev->raw->last_type)
		type |= IR_START_EVENT;
	else
		ev.duration = delta;

	if (type & IR_START_EVENT)
		FUNC1(dev);
	else if (dev->raw->last_type & IR_SPACE) {
		ev.pulse = false;
		rc = FUNC2(dev, &ev);
	} else if (dev->raw->last_type & IR_PULSE) {
		ev.pulse = true;
		rc = FUNC2(dev, &ev);
	} else
		return 0;

	dev->raw->last_event = now;
	dev->raw->last_type = type;
	return rc;
}