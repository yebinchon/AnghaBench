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
typedef  long u8 ;
struct smsc47m1_data {int* fan_div; int* fan_preload; int /*<<< orphan*/  update_lock; } ;
struct sensor_device_attribute {int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 long FUNC0 (int) ; 
 size_t EINVAL ; 
 int FUNC1 (long,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SMSC47M1_REG_FANDIV ; 
 int /*<<< orphan*/ * SMSC47M1_REG_FAN_PRELOAD ; 
 int /*<<< orphan*/  SMSC47M2_REG_FANDIV3 ; 
 struct smsc47m1_data* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 long FUNC5 (char const*,int /*<<< orphan*/ *,int) ; 
 int FUNC6 (struct smsc47m1_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct smsc47m1_data*,int /*<<< orphan*/ ,long) ; 
 struct sensor_device_attribute* FUNC8 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev, struct device_attribute
			   *devattr, const char *buf, size_t count)
{
	struct sensor_device_attribute *attr = FUNC8(devattr);
	struct smsc47m1_data *data = FUNC2(dev);
	int nr = attr->index;
	long new_div = FUNC5(buf, NULL, 10), tmp;
	u8 old_div = FUNC0(data->fan_div[nr]);

	if (new_div == old_div) /* No change */
		return count;

	FUNC3(&data->update_lock);
	switch (new_div) {
	case 1: data->fan_div[nr] = 0; break;
	case 2: data->fan_div[nr] = 1; break;
	case 4: data->fan_div[nr] = 2; break;
	case 8: data->fan_div[nr] = 3; break;
	default:
		FUNC4(&data->update_lock);
		return -EINVAL;
	}

	switch (nr) {
	case 0:
	case 1:
		tmp = FUNC6(data, SMSC47M1_REG_FANDIV)
		      & ~(0x03 << (4 + 2 * nr));
		tmp |= data->fan_div[nr] << (4 + 2 * nr);
		FUNC7(data, SMSC47M1_REG_FANDIV, tmp);
		break;
	case 2:
		tmp = FUNC6(data, SMSC47M2_REG_FANDIV3) & 0xCF;
		tmp |= data->fan_div[2] << 4;
		FUNC7(data, SMSC47M2_REG_FANDIV3, tmp);
		break;
	}

	/* Preserve fan min */
	tmp = 192 - (old_div * (192 - data->fan_preload[nr])
		     + new_div / 2) / new_div;
	data->fan_preload[nr] = FUNC1(tmp, 0, 191);
	FUNC7(data, SMSC47M1_REG_FAN_PRELOAD[nr],
			     data->fan_preload[nr]);
	FUNC4(&data->update_lock);

	return count;
}