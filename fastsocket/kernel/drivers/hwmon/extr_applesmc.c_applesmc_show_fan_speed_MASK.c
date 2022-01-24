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
struct sensor_device_attribute_2 {size_t nr; char index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  applesmc_lock ; 
 int FUNC0 (char*,int*,int) ; 
 char** fan_speed_keys ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ,char*,unsigned int) ; 
 struct sensor_device_attribute_2* FUNC4 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
				struct device_attribute *attr, char *sysfsbuf)
{
	int ret;
	unsigned int speed = 0;
	char newkey[5];
	u8 buffer[2];
	struct sensor_device_attribute_2 *sensor_attr =
						FUNC4(attr);

	newkey[0] = fan_speed_keys[sensor_attr->nr][0];
	newkey[1] = '0' + sensor_attr->index;
	newkey[2] = fan_speed_keys[sensor_attr->nr][2];
	newkey[3] = fan_speed_keys[sensor_attr->nr][3];
	newkey[4] = 0;

	FUNC1(&applesmc_lock);

	ret = FUNC0(newkey, buffer, 2);
	speed = ((buffer[0] << 8 | buffer[1]) >> 2);

	FUNC2(&applesmc_lock);
	if (ret)
		return ret;
	else
		return FUNC3(sysfsbuf, PAGE_SIZE, "%u\n", speed);
}