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
struct lm63_data {int /*<<< orphan*/  update_lock; int /*<<< orphan*/ * temp8; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  LM63_REG_LOCAL_HIGH ; 
 int /*<<< orphan*/  FUNC0 (long) ; 
 struct lm63_data* FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 long FUNC5 (char const*,int /*<<< orphan*/ *,int) ; 
 struct i2c_client* FUNC6 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev, struct device_attribute *dummy,
			 const char *buf, size_t count)
{
	struct i2c_client *client = FUNC6(dev);
	struct lm63_data *data = FUNC1(client);
	long val = FUNC5(buf, NULL, 10);

	FUNC3(&data->update_lock);
	data->temp8[1] = FUNC0(val);
	FUNC2(client, LM63_REG_LOCAL_HIGH, data->temp8[1]);
	FUNC4(&data->update_lock);
	return count;
}