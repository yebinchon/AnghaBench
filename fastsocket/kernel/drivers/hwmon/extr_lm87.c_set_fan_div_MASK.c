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
struct lm87_data {int* fan_min; int* fan_div; int /*<<< orphan*/  update_lock; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (unsigned long,long) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  LM87_REG_VID_FAN_DIV ; 
 struct lm87_data* FUNC4 (struct i2c_client*) ; 
 int FUNC5 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 long FUNC9 (char const*,int /*<<< orphan*/ *,int) ; 
 struct i2c_client* FUNC10 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC11(struct device *dev, const char *buf,
		size_t count, int nr)
{
	struct i2c_client *client = FUNC10(dev);
	struct lm87_data *data = FUNC4(client);
	long val = FUNC9(buf, NULL, 10);
	unsigned long min;
	u8 reg;

	FUNC7(&data->update_lock);
	min = FUNC1(data->fan_min[nr],
			   FUNC0(data->fan_div[nr]));

	switch (val) {
	case 1: data->fan_div[nr] = 0; break;
	case 2: data->fan_div[nr] = 1; break;
	case 4: data->fan_div[nr] = 2; break;
	case 8: data->fan_div[nr] = 3; break;
	default:
		FUNC8(&data->update_lock);
		return -EINVAL;
	}

	reg = FUNC5(client, LM87_REG_VID_FAN_DIV);
	switch (nr) {
	case 0:
	    reg = (reg & 0xCF) | (data->fan_div[0] << 4);
	    break;
	case 1:
	    reg = (reg & 0x3F) | (data->fan_div[1] << 6);
	    break;
	}
	FUNC6(client, LM87_REG_VID_FAN_DIV, reg);

	data->fan_min[nr] = FUNC2(min, val);
	FUNC6(client, FUNC3(nr),
			 data->fan_min[nr]);
	FUNC8(&data->update_lock);

	return count;
}