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
typedef  int u32 ;
struct temp_data {int /*<<< orphan*/  status_reg; int /*<<< orphan*/  cpu; } ;
struct sensor_device_attribute {size_t index; } ;
struct platform_data {struct temp_data** core_data; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 struct platform_data* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 struct sensor_device_attribute* FUNC3 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				struct device_attribute *devattr, char *buf)
{
	u32 eax, edx;
	struct sensor_device_attribute *attr = FUNC3(devattr);
	struct platform_data *pdata = FUNC0(dev);
	struct temp_data *tdata = pdata->core_data[attr->index];

	FUNC1(tdata->cpu, tdata->status_reg, &eax, &edx);

	return FUNC2(buf, "%d\n", (eax >> 5) & 1);
}