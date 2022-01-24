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
struct sensor_device_attribute {size_t index; } ;
struct lm90_data {scalar_t__ kind; int /*<<< orphan*/  temp_hyst; int /*<<< orphan*/ * temp8; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 scalar_t__ adt7461 ; 
 struct lm90_data* FUNC0 (struct device*) ; 
 scalar_t__ lm99 ; 
 scalar_t__ max6646 ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct lm90_data*,int /*<<< orphan*/ ) ; 
 struct sensor_device_attribute* FUNC5 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev, struct device_attribute *devattr,
			     char *buf)
{
	struct sensor_device_attribute *attr = FUNC5(devattr);
	struct lm90_data *data = FUNC0(dev);
	int temp;

	if (data->kind == adt7461)
		temp = FUNC4(data, data->temp8[attr->index]);
	else if (data->kind == max6646)
		temp = FUNC3(data->temp8[attr->index]);
	else
		temp = FUNC2(data->temp8[attr->index]);

	/* +16 degrees offset for temp2 for the LM99 */
	if (data->kind == lm99 && attr->index == 3)
		temp += 16000;

	return FUNC1(buf, "%d\n", temp - FUNC2(data->temp_hyst));
}