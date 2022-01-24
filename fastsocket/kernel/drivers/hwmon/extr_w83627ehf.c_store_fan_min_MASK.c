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
struct w83627ehf_data {int* fan_min; int* fan_div; int* fan; int /*<<< orphan*/  update_lock; int /*<<< orphan*/  last_updated; } ;
struct sensor_device_attribute {int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/ * W83627EHF_REG_FAN_MIN ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct w83627ehf_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC8 (char const*,int /*<<< orphan*/ *,int) ; 
 struct sensor_device_attribute* FUNC9 (struct device_attribute*) ; 
 int /*<<< orphan*/  FUNC10 (struct w83627ehf_data*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct w83627ehf_data*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static ssize_t
FUNC12(struct device *dev, struct device_attribute *attr,
	      const char *buf, size_t count)
{
	struct w83627ehf_data *data = FUNC1(dev);
	struct sensor_device_attribute *sensor_attr = FUNC9(attr);
	int nr = sensor_attr->index;
	unsigned int val = FUNC8(buf, NULL, 10);
	unsigned int reg;
	u8 new_div;

	FUNC6(&data->update_lock);
	if (!val) {
		/* No min limit, alarm disabled */
		data->fan_min[nr] = 255;
		new_div = data->fan_div[nr]; /* No change */
		FUNC2(dev, "fan%u low limit and alarm disabled\n", nr + 1);
	} else if ((reg = 1350000U / val) >= 128 * 255) {
		/* Speed below this value cannot possibly be represented,
		   even with the highest divider (128) */
		data->fan_min[nr] = 254;
		new_div = 7; /* 128 == (1 << 7) */
		FUNC3(dev, "fan%u low limit %u below minimum %u, set to "
			 "minimum\n", nr + 1, val, FUNC5(254, 128));
	} else if (!reg) {
		/* Speed above this value cannot possibly be represented,
		   even with the lowest divider (1) */
		data->fan_min[nr] = 1;
		new_div = 0; /* 1 == (1 << 0) */
		FUNC3(dev, "fan%u low limit %u above maximum %u, set to "
			 "maximum\n", nr + 1, val, FUNC5(1, 1));
	} else {
		/* Automatically pick the best divider, i.e. the one such
		   that the min limit will correspond to a register value
		   in the 96..192 range */
		new_div = 0;
		while (reg > 192 && new_div < 7) {
			reg >>= 1;
			new_div++;
		}
		data->fan_min[nr] = reg;
	}

	/* Write both the fan clock divider (if it changed) and the new
	   fan min (unconditionally) */
	if (new_div != data->fan_div[nr]) {
		/* Preserve the fan speed reading */
		if (data->fan[nr] != 0xff) {
			if (new_div > data->fan_div[nr])
				data->fan[nr] >>= new_div - data->fan_div[nr];
			else if (data->fan[nr] & 0x80)
				data->fan[nr] = 0xff;
			else
				data->fan[nr] <<= data->fan_div[nr] - new_div;
		}

		FUNC0(dev, "fan%u clock divider changed from %u to %u\n",
			nr + 1, FUNC4(data->fan_div[nr]),
			FUNC4(new_div));
		data->fan_div[nr] = new_div;
		FUNC10(data, nr);
		/* Give the chip time to sample a new speed value */
		data->last_updated = jiffies;
	}
	FUNC11(data, W83627EHF_REG_FAN_MIN[nr],
			      data->fan_min[nr]);
	FUNC7(&data->update_lock);

	return count;
}