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
struct sensor_device_attribute_2 {int nr; int index; } ;
struct k8temp_data {int temp_offset; int /*<<< orphan*/ ** temp; scalar_t__ swap_core_select; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct k8temp_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 struct sensor_device_attribute_2* FUNC3 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
			 struct device_attribute *devattr, char *buf)
{
	struct sensor_device_attribute_2 *attr =
	    FUNC3(devattr);
	int core = attr->nr;
	int place = attr->index;
	int temp;
	struct k8temp_data *data = FUNC1(dev);

	if (data->swap_core_select)
		core = core ? 0 : 1;

	temp = FUNC0(data->temp[core][place]) + data->temp_offset;

	return FUNC2(buf, "%d\n", temp);
}