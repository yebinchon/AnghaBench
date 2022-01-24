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
struct lm92_data {int /*<<< orphan*/  update_lock; scalar_t__ temp1_hyst; int /*<<< orphan*/  temp1_crit; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  LM92_REG_TEMP_HYST ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct lm92_data* FUNC2 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 long FUNC6 (char const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct i2c_client* FUNC8 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev, struct device_attribute *attr, const char *buf,
	size_t count)
{
	struct i2c_client *client = FUNC8(dev);
	struct lm92_data *data = FUNC2(client);
	long val = FUNC6(buf, NULL, 10);

	FUNC4(&data->update_lock);
	data->temp1_hyst = FUNC0(data->temp1_crit) - val;
	FUNC3(client, LM92_REG_TEMP_HYST,
				  FUNC7(FUNC1(data->temp1_hyst)));
	FUNC5(&data->update_lock);
	return count;
}