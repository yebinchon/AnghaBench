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
struct sensor_device_attribute {size_t index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  applesmc_lock ; 
 int FUNC0 (char const*,int*,int) ; 
 size_t applesmc_temperature_set ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ,char*,unsigned int) ; 
 char*** temperature_sensors_sets ; 
 struct sensor_device_attribute* FUNC4 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
			struct device_attribute *devattr, char *sysfsbuf)
{
	int ret;
	u8 buffer[2];
	unsigned int temp;
	struct sensor_device_attribute *attr = FUNC4(devattr);
	const char* key =
		temperature_sensors_sets[applesmc_temperature_set][attr->index];

	FUNC1(&applesmc_lock);

	ret = FUNC0(key, buffer, 2);
	temp = buffer[0]*1000;
	temp += (buffer[1] >> 6) * 250;

	FUNC2(&applesmc_lock);

	if (ret)
		return ret;
	else
		return FUNC3(sysfsbuf, PAGE_SIZE, "%u\n", temp);
}