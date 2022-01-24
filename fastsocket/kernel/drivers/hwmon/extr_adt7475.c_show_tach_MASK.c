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
struct sensor_device_attribute_2 {size_t nr; int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7475_data {int alarms; int /*<<< orphan*/ ** tach; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 size_t ALARM ; 
 struct adt7475_data* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct sensor_device_attribute_2* FUNC3 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev, struct device_attribute *attr,
			 char *buf)
{
	struct adt7475_data *data = FUNC0(dev);
	struct sensor_device_attribute_2 *sattr = FUNC3(attr);
	int out;

	if (sattr->nr == ALARM)
		out = (data->alarms >> (sattr->index + 10)) & 1;
	else
		out = FUNC2(data->tach[sattr->nr][sattr->index]);

	return FUNC1(buf, "%d\n", out);
}