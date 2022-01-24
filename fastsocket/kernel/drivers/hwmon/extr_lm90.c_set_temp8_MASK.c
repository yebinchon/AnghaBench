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
typedef  int /*<<< orphan*/  u8 ;
struct sensor_device_attribute {int index; } ;
struct lm90_data {scalar_t__ kind; int /*<<< orphan*/  update_lock; int /*<<< orphan*/ * temp8; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
#define  LM90_REG_W_LOCAL_CRIT 131 
#define  LM90_REG_W_LOCAL_HIGH 130 
#define  LM90_REG_W_LOCAL_LOW 129 
#define  LM90_REG_W_REMOTE_CRIT 128 
 scalar_t__ adt7461 ; 
 struct lm90_data* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 scalar_t__ lm99 ; 
 scalar_t__ max6646 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 long FUNC4 (char const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (long) ; 
 int /*<<< orphan*/  FUNC6 (long) ; 
 int /*<<< orphan*/  FUNC7 (struct lm90_data*,long) ; 
 struct i2c_client* FUNC8 (struct device*) ; 
 struct sensor_device_attribute* FUNC9 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC10(struct device *dev, struct device_attribute *devattr,
			 const char *buf, size_t count)
{
	static const u8 reg[4] = {
		LM90_REG_W_LOCAL_LOW,
		LM90_REG_W_LOCAL_HIGH,
		LM90_REG_W_LOCAL_CRIT,
		LM90_REG_W_REMOTE_CRIT,
	};

	struct sensor_device_attribute *attr = FUNC9(devattr);
	struct i2c_client *client = FUNC8(dev);
	struct lm90_data *data = FUNC0(client);
	long val = FUNC4(buf, NULL, 10);
	int nr = attr->index;

	/* +16 degrees offset for temp2 for the LM99 */
	if (data->kind == lm99 && attr->index == 3)
		val -= 16000;

	FUNC2(&data->update_lock);
	if (data->kind == adt7461)
		data->temp8[nr] = FUNC7(data, val);
	else if (data->kind == max6646)
		data->temp8[nr] = FUNC6(val);
	else
		data->temp8[nr] = FUNC5(val);
	FUNC1(client, reg[nr], data->temp8[nr]);
	FUNC3(&data->update_lock);
	return count;
}