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
typedef  int u16 ;
struct w83627ehf_data {int* tolerance; int /*<<< orphan*/  update_lock; } ;
struct sensor_device_attribute {int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/ * W83627EHF_REG_TOLERANCE ; 
 struct w83627ehf_data* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct sensor_device_attribute* FUNC5 (struct device_attribute*) ; 
 int FUNC6 (struct w83627ehf_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct w83627ehf_data*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ssize_t
FUNC8(struct device *dev, struct device_attribute *attr,
			const char *buf, size_t count)
{
	struct w83627ehf_data *data = FUNC0(dev);
	struct sensor_device_attribute *sensor_attr = FUNC5(attr);
	int nr = sensor_attr->index;
	u16 reg;
	/* Limit the temp to 0C - 15C */
	u8 val = FUNC4(FUNC3(buf, NULL, 10), 0, 15000);

	FUNC1(&data->update_lock);
	reg = FUNC6(data, W83627EHF_REG_TOLERANCE[nr]);
	data->tolerance[nr] = val;
	if (nr == 1)
		reg = (reg & 0x0f) | (val << 4);
	else
		reg = (reg & 0xf0) | val;
	FUNC7(data, W83627EHF_REG_TOLERANCE[nr], reg);
	FUNC2(&data->update_lock);
	return count;
}