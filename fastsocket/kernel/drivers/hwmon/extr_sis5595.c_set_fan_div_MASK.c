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
struct sis5595_data {int* fan_min; int* fan_div; int /*<<< orphan*/  update_lock; } ;
struct sensor_device_attribute {int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t EINVAL ; 
 unsigned long FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIS5595_REG_FANDIV ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,unsigned long) ; 
 struct sis5595_data* FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC8 (char const*,int /*<<< orphan*/ *,int) ; 
 int FUNC9 (struct sis5595_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sis5595_data*,int /*<<< orphan*/ ,int) ; 
 struct sensor_device_attribute* FUNC11 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC12(struct device *dev, struct device_attribute *da,
			   const char *buf, size_t count)
{
	struct sis5595_data *data = FUNC5(dev);
	struct sensor_device_attribute *attr = FUNC11(da);
	int nr = attr->index;
	unsigned long min;
	unsigned long val = FUNC8(buf, NULL, 10);
	int reg;

	FUNC6(&data->update_lock);
	min = FUNC1(data->fan_min[nr],
			FUNC0(data->fan_div[nr]));
	reg = FUNC9(data, SIS5595_REG_FANDIV);

	switch (val) {
	case 1: data->fan_div[nr] = 0; break;
	case 2: data->fan_div[nr] = 1; break;
	case 4: data->fan_div[nr] = 2; break;
	case 8: data->fan_div[nr] = 3; break;
	default:
		FUNC4(dev, "fan_div value %ld not "
			"supported. Choose one of 1, 2, 4 or 8!\n", val);
		FUNC7(&data->update_lock);
		return -EINVAL;
	}
	
	switch (nr) {
	case 0:
		reg = (reg & 0xcf) | (data->fan_div[nr] << 4);
		break;
	case 1:
		reg = (reg & 0x3f) | (data->fan_div[nr] << 6);
		break;
	}
	FUNC10(data, SIS5595_REG_FANDIV, reg);
	data->fan_min[nr] =
		FUNC2(min, FUNC0(data->fan_div[nr]));
	FUNC10(data, FUNC3(nr), data->fan_min[nr]);
	FUNC7(&data->update_lock);
	return count;
}