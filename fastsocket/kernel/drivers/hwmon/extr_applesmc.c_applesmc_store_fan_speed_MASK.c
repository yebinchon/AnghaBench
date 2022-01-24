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
typedef  int u8 ;
typedef  int u32 ;
struct sensor_device_attribute_2 {size_t nr; char index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  applesmc_lock ; 
 int FUNC0 (char*,int*,int) ; 
 char** fan_speed_keys ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ *,int) ; 
 struct sensor_device_attribute_2* FUNC4 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
					struct device_attribute *attr,
					const char *sysfsbuf, size_t count)
{
	int ret;
	u32 speed;
	char newkey[5];
	u8 buffer[2];
	struct sensor_device_attribute_2 *sensor_attr =
						FUNC4(attr);

	speed = FUNC3(sysfsbuf, NULL, 10);

	if (speed > 0x4000) /* Bigger than a 14-bit value */
		return -EINVAL;

	newkey[0] = fan_speed_keys[sensor_attr->nr][0];
	newkey[1] = '0' + sensor_attr->index;
	newkey[2] = fan_speed_keys[sensor_attr->nr][2];
	newkey[3] = fan_speed_keys[sensor_attr->nr][3];
	newkey[4] = 0;

	FUNC1(&applesmc_lock);

	buffer[0] = (speed >> 6) & 0xff;
	buffer[1] = (speed << 2) & 0xff;
	ret = FUNC0(newkey, buffer, 2);

	FUNC2(&applesmc_lock);
	if (ret)
		return ret;
	else
		return count;
}