#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct atk_sensor_data {int is_valid; int /*<<< orphan*/  cached_value; scalar_t__ last_updated; TYPE_1__* data; } ;
struct TYPE_2__ {scalar_t__ old_interface; } ;

/* Variables and functions */
 scalar_t__ CACHE_TIME ; 
 int FUNC0 (struct atk_sensor_data*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct atk_sensor_data*,int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct atk_sensor_data *sensor, u64 *value)
{
	int err;

	if (!sensor->is_valid ||
	    FUNC2(jiffies, sensor->last_updated + CACHE_TIME)) {
		if (sensor->data->old_interface)
			err = FUNC1(sensor, value);
		else
			err = FUNC0(sensor, value);

		sensor->is_valid = true;
		sensor->last_updated = jiffies;
		sensor->cached_value = *value;
	} else {
		*value = sensor->cached_value;
		err = 0;
	}

	return err;
}