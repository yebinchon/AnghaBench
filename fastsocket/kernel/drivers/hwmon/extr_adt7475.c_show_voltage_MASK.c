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
struct sensor_device_attribute_2 {int nr; size_t index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7475_data {int alarms; unsigned short** voltage; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
#define  ALARM 128 
 struct adt7475_data* FUNC0 (struct device*) ; 
 int FUNC1 (unsigned short) ; 
 int FUNC2 (unsigned short) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 struct sensor_device_attribute_2* FUNC4 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev, struct device_attribute *attr,
			    char *buf)
{
	struct adt7475_data *data = FUNC0(dev);
	struct sensor_device_attribute_2 *sattr = FUNC4(attr);
	unsigned short val;

	switch (sattr->nr) {
	case ALARM:
		return FUNC3(buf, "%d\n",
			       (data->alarms >> (sattr->index + 1)) & 1);
	default:
		val = data->voltage[sattr->nr][sattr->index];
		return FUNC3(buf, "%d\n",
			       sattr->index ==
			       0 ? FUNC2(val) : FUNC1(val));
	}
}