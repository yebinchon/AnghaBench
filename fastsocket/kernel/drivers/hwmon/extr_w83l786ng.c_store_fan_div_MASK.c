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
typedef  int u8 ;
struct w83l786ng_data {int* fan_min; int* fan_div; int /*<<< orphan*/  update_lock; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  W83L786NG_REG_FAN_DIV ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 struct w83l786ng_data* FUNC5 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char const*,int /*<<< orphan*/ *,int) ; 
 struct i2c_client* FUNC9 (struct device*) ; 
 TYPE_1__* FUNC10 (struct device_attribute*) ; 
 int FUNC11 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ssize_t
FUNC13(struct device *dev, struct device_attribute *attr,
	      const char *buf, size_t count)
{
	int nr = FUNC10(attr)->index;
	struct i2c_client *client = FUNC9(dev);
	struct w83l786ng_data *data = FUNC5(client);

	unsigned long min;
	u8 tmp_fan_div;
	u8 fan_div_reg;
	u8 keep_mask = 0;
	u8 new_shift = 0;

	/* Save fan_min */
	FUNC6(&data->update_lock);
	min = FUNC2(data->fan_min[nr], FUNC0(data->fan_div[nr]));

	data->fan_div[nr] = FUNC1(FUNC8(buf, NULL, 10));

	switch (nr) {
	case 0:
		keep_mask = 0xf8;
		new_shift = 0;
		break;
	case 1:
		keep_mask = 0x8f;
		new_shift = 4;
		break;
	}

	fan_div_reg = FUNC11(client, W83L786NG_REG_FAN_DIV)
					   & keep_mask;

	tmp_fan_div = (data->fan_div[nr] << new_shift) & ~keep_mask;

	FUNC12(client, W83L786NG_REG_FAN_DIV,
			      fan_div_reg | tmp_fan_div);

	/* Restore fan_min */
	data->fan_min[nr] = FUNC3(min, FUNC0(data->fan_div[nr]));
	FUNC12(client, FUNC4(nr),
			      data->fan_min[nr]);
	FUNC7(&data->update_lock);

	return count;
}