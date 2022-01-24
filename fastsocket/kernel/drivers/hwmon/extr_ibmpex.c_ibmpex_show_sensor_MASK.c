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
struct sensor_device_attribute_2 {size_t index; size_t nr; } ;
struct ibmpex_bmc_data {TYPE_1__* sensors; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int multiplier; int* values; } ;

/* Variables and functions */
 struct ibmpex_bmc_data* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct ibmpex_bmc_data*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 struct sensor_device_attribute_2* FUNC3 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				  struct device_attribute *devattr,
				  char *buf)
{
	struct sensor_device_attribute_2 *attr = FUNC3(devattr);
	struct ibmpex_bmc_data *data = FUNC0(dev);
	int mult = data->sensors[attr->index].multiplier;
	FUNC1(data);

	return FUNC2(buf, "%d\n",
		       data->sensors[attr->index].values[attr->nr] * mult);
}