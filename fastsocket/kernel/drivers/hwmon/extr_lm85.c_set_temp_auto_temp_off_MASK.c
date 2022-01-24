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
struct lm85_data {int /*<<< orphan*/  update_lock; TYPE_1__* zone; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_4__ {int index; } ;
struct TYPE_3__ {int hyst; int /*<<< orphan*/  off_desired; int /*<<< orphan*/  limit; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  LM85_REG_AFAN_HYST1 ; 
 int /*<<< orphan*/  LM85_REG_AFAN_HYST2 ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (long) ; 
 struct lm85_data* FUNC3 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 long FUNC7 (char const*,int /*<<< orphan*/ *,int) ; 
 struct i2c_client* FUNC8 (struct device*) ; 
 TYPE_2__* FUNC9 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC10(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t count)
{
	int nr = FUNC9(attr)->index;
	struct i2c_client *client = FUNC8(dev);
	struct lm85_data *data = FUNC3(client);
	int min;
	long val = FUNC7(buf, NULL, 10);

	FUNC5(&data->update_lock);
	min = FUNC1(data->zone[nr].limit);
	data->zone[nr].off_desired = FUNC2(val);
	data->zone[nr].hyst = FUNC0(min - val);
	if (nr == 0 || nr == 1) {
		FUNC4(client, LM85_REG_AFAN_HYST1,
			(data->zone[0].hyst << 4)
			| data->zone[1].hyst);
	} else {
		FUNC4(client, LM85_REG_AFAN_HYST2,
			(data->zone[2].hyst << 4));
	}
	FUNC6(&data->update_lock);
	return count;
}