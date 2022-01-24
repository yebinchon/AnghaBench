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
struct sysdev_attribute {int dummy; } ;
struct sys_device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_SYNC_ETR ; 
 int /*<<< orphan*/  CLOCK_SYNC_HAS_ETR ; 
 size_t EINVAL ; 
 size_t EOPNOTSUPP ; 
 int /*<<< orphan*/  ETR_EVENT_PORT0_CHANGE ; 
 int /*<<< orphan*/  ETR_EVENT_PORT1_CHANGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  clock_sync_flags ; 
 int /*<<< orphan*/  clock_sync_mutex ; 
 int /*<<< orphan*/  etr_events ; 
 struct sys_device etr_port0_dev ; 
 unsigned int etr_port0_online ; 
 unsigned int etr_port1_online ; 
 int /*<<< orphan*/  etr_work ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 unsigned int FUNC5 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  time_sync_wq ; 

__attribute__((used)) static ssize_t FUNC7(struct sys_device *dev,
				struct sysdev_attribute *attr,
				const char *buf, size_t count)
{
	unsigned int value;

	value = FUNC5(buf, NULL, 0);
	if (value != 0 && value != 1)
		return -EINVAL;
	if (!FUNC6(CLOCK_SYNC_HAS_ETR, &clock_sync_flags))
		return -EOPNOTSUPP;
	FUNC1(&clock_sync_mutex);
	if (dev == &etr_port0_dev) {
		if (etr_port0_online == value)
			goto out;	/* Nothing to do. */
		etr_port0_online = value;
		if (etr_port0_online && etr_port1_online)
			FUNC4(CLOCK_SYNC_ETR, &clock_sync_flags);
		else
			FUNC0(CLOCK_SYNC_ETR, &clock_sync_flags);
		FUNC4(ETR_EVENT_PORT0_CHANGE, &etr_events);
		FUNC3(time_sync_wq, &etr_work);
	} else {
		if (etr_port1_online == value)
			goto out;	/* Nothing to do. */
		etr_port1_online = value;
		if (etr_port0_online && etr_port1_online)
			FUNC4(CLOCK_SYNC_ETR, &clock_sync_flags);
		else
			FUNC0(CLOCK_SYNC_ETR, &clock_sync_flags);
		FUNC4(ETR_EVENT_PORT1_CHANGE, &etr_events);
		FUNC3(time_sync_wq, &etr_work);
	}
out:
	FUNC2(&clock_sync_mutex);
	return count;
}