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
struct lm80_data {int* fan_min; int* fan_div; int /*<<< orphan*/  update_lock; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t EINVAL ; 
 unsigned long FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LM80_REG_FANDIV ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,unsigned long) ; 
 struct lm80_data* FUNC5 (struct i2c_client*) ; 
 int FUNC6 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC10 (char const*,int /*<<< orphan*/ *,int) ; 
 struct i2c_client* FUNC11 (struct device*) ; 
 TYPE_1__* FUNC12 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC13(struct device *dev, struct device_attribute *attr,
	const char *buf, size_t count)
{
	int nr = FUNC12(attr)->index;
	struct i2c_client *client = FUNC11(dev);
	struct lm80_data *data = FUNC5(client);
	unsigned long min, val = FUNC10(buf, NULL, 10);
	u8 reg;

	/* Save fan_min */
	FUNC8(&data->update_lock);
	min = FUNC1(data->fan_min[nr],
			   FUNC0(data->fan_div[nr]));

	switch (val) {
	case 1: data->fan_div[nr] = 0; break;
	case 2: data->fan_div[nr] = 1; break;
	case 4: data->fan_div[nr] = 2; break;
	case 8: data->fan_div[nr] = 3; break;
	default:
		FUNC4(&client->dev, "fan_div value %ld not "
			"supported. Choose one of 1, 2, 4 or 8!\n", val);
		FUNC9(&data->update_lock);
		return -EINVAL;
	}

	reg = (FUNC6(client, LM80_REG_FANDIV) & ~(3 << (2 * (nr + 1))))
	    | (data->fan_div[nr] << (2 * (nr + 1)));
	FUNC7(client, LM80_REG_FANDIV, reg);

	/* Restore fan_min */
	data->fan_min[nr] = FUNC2(min, FUNC0(data->fan_div[nr]));
	FUNC7(client, FUNC3(nr + 1), data->fan_min[nr]);
	FUNC9(&data->update_lock);

	return count;
}