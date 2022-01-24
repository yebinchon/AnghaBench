#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct lm85_data {int* pwm_freq; int /*<<< orphan*/  update_lock; TYPE_1__* zone; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_4__ {int index; } ;
struct TYPE_3__ {int limit; int range; int max_desired; int hyst; int off_desired; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  LM85_REG_AFAN_HYST1 ; 
 int /*<<< orphan*/  LM85_REG_AFAN_HYST2 ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int) ; 
 int FUNC5 (long) ; 
 struct lm85_data* FUNC6 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 long FUNC10 (char const*,int /*<<< orphan*/ *,int) ; 
 struct i2c_client* FUNC11 (struct device*) ; 
 TYPE_2__* FUNC12 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC13(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t count)
{
	int nr = FUNC12(attr)->index;
	struct i2c_client *client = FUNC11(dev);
	struct lm85_data *data = FUNC6(client);
	long val = FUNC10(buf, NULL, 10);

	FUNC8(&data->update_lock);
	data->zone[nr].limit = FUNC5(val);
	FUNC7(client, FUNC1(nr),
		data->zone[nr].limit);

/* Update temp_auto_max and temp_auto_range */
	data->zone[nr].range = FUNC3(
		FUNC4(data->zone[nr].max_desired) -
		FUNC4(data->zone[nr].limit));
	FUNC7(client, FUNC2(nr),
		((data->zone[nr].range & 0x0f) << 4)
		| (data->pwm_freq[nr] & 0x07));

/* Update temp_auto_hyst and temp_auto_off */
	data->zone[nr].hyst = FUNC0(FUNC4(
		data->zone[nr].limit) - FUNC4(
		data->zone[nr].off_desired));
	if (nr == 0 || nr == 1) {
		FUNC7(client, LM85_REG_AFAN_HYST1,
			(data->zone[0].hyst << 4)
			| data->zone[1].hyst);
	} else {
		FUNC7(client, LM85_REG_AFAN_HYST2,
			(data->zone[2].hyst << 4));
	}
	FUNC9(&data->update_lock);
	return count;
}