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
 int /*<<< orphan*/  FUNC0 (long) ; 
 int /*<<< orphan*/  LM63_REG_REMOTE_TCRIT_HYST ; 
 long FUNC1 (int /*<<< orphan*/ ) ; 
 struct lm63_data* FUNC2 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 long FUNC6 (char const*,int /*<<< orphan*/ *,int) ; 
 struct i2c_client* FUNC7 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev, struct device_attribute *dummy,
				   const char *buf, size_t count)
{
	struct i2c_client *client = FUNC7(dev);
	struct lm63_data *data = FUNC2(client);
	long val = FUNC6(buf, NULL, 10);
	long hyst;

	FUNC4(&data->update_lock);
	hyst = FUNC1(data->temp8[2]) - val;
	FUNC3(client, LM63_REG_REMOTE_TCRIT_HYST,
				  FUNC0(hyst));
	FUNC5(&data->update_lock);
	return count;
}