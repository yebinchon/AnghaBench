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
struct temp_data {int valid; int temp; int tjmax; int /*<<< orphan*/  update_lock; scalar_t__ last_updated; int /*<<< orphan*/  status_reg; int /*<<< orphan*/  cpu; } ;
struct sensor_device_attribute {size_t index; } ;
struct platform_data {struct temp_data** core_data; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EAGAIN ; 
 scalar_t__ HZ ; 
 struct platform_data* FUNC0 (struct device*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__) ; 
 struct sensor_device_attribute* FUNC6 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
			struct device_attribute *devattr, char *buf)
{
	u32 eax, edx;
	struct sensor_device_attribute *attr = FUNC6(devattr);
	struct platform_data *pdata = FUNC0(dev);
	struct temp_data *tdata = pdata->core_data[attr->index];

	FUNC1(&tdata->update_lock);

	/* Check whether the time interval has elapsed */
	if (!tdata->valid || FUNC5(jiffies, tdata->last_updated + HZ)) {
		FUNC3(tdata->cpu, tdata->status_reg, &eax, &edx);
		tdata->valid = 0;
		/* Check whether the data is valid */
		if (eax & 0x80000000) {
			tdata->temp = tdata->tjmax -
					((eax >> 16) & 0x7f) * 1000;
			tdata->valid = 1;
		}
		tdata->last_updated = jiffies;
	}

	FUNC2(&tdata->update_lock);
	return tdata->valid ? FUNC4(buf, "%d\n", tdata->temp) : -EAGAIN;
}