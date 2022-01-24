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
struct lm90_data {scalar_t__ kind; int /*<<< orphan*/  update_lock; int /*<<< orphan*/  temp_hyst; int /*<<< orphan*/ * temp8; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  LM90_REG_W_TCRIT_HYST ; 
 scalar_t__ adt7461 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct lm90_data* FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ max6646 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 long FUNC5 (char const*,int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct lm90_data*,int /*<<< orphan*/ ) ; 
 struct i2c_client* FUNC9 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC10(struct device *dev, struct device_attribute *dummy,
			    const char *buf, size_t count)
{
	struct i2c_client *client = FUNC9(dev);
	struct lm90_data *data = FUNC1(client);
	long val = FUNC5(buf, NULL, 10);
	int temp;

	FUNC3(&data->update_lock);
	if (data->kind == adt7461)
		temp = FUNC8(data, data->temp8[2]);
	else if (data->kind == max6646)
		temp = FUNC7(data->temp8[2]);
	else
		temp = FUNC6(data->temp8[2]);

	data->temp_hyst = FUNC0(temp - val);
	FUNC2(client, LM90_REG_W_TCRIT_HYST,
				  data->temp_hyst);
	FUNC4(&data->update_lock);
	return count;
}