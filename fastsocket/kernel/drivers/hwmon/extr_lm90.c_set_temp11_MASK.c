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
struct lm90_data {scalar_t__ kind; int* temp11; int /*<<< orphan*/  update_lock; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
#define  LM90_REG_W_REMOTE_HIGHH 133 
#define  LM90_REG_W_REMOTE_HIGHL 132 
#define  LM90_REG_W_REMOTE_LOWH 131 
#define  LM90_REG_W_REMOTE_LOWL 130 
#define  LM90_REG_W_REMOTE_OFFSH 129 
#define  LM90_REG_W_REMOTE_OFFSL 128 
 scalar_t__ adt7461 ; 
 struct lm90_data* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,int /*<<< orphan*/  const,int) ; 
 scalar_t__ lm99 ; 
 scalar_t__ max6646 ; 
 scalar_t__ max6657 ; 
 scalar_t__ max6680 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 long FUNC4 (char const*,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (long) ; 
 int FUNC6 (long) ; 
 int FUNC7 (struct lm90_data*,long) ; 
 int FUNC8 (long) ; 
 struct i2c_client* FUNC9 (struct device*) ; 
 struct sensor_device_attribute* FUNC10 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC11(struct device *dev, struct device_attribute *devattr,
			  const char *buf, size_t count)
{
	static const u8 reg[6] = {
		LM90_REG_W_REMOTE_LOWH,
		LM90_REG_W_REMOTE_LOWL,
		LM90_REG_W_REMOTE_HIGHH,
		LM90_REG_W_REMOTE_HIGHL,
		LM90_REG_W_REMOTE_OFFSH,
		LM90_REG_W_REMOTE_OFFSL,
	};

	struct sensor_device_attribute *attr = FUNC10(devattr);
	struct i2c_client *client = FUNC9(dev);
	struct lm90_data *data = FUNC0(client);
	long val = FUNC4(buf, NULL, 10);
	int nr = attr->index;

	/* +16 degrees offset for temp2 for the LM99 */
	if (data->kind == lm99 && attr->index <= 2)
		val -= 16000;

	FUNC2(&data->update_lock);
	if (data->kind == adt7461)
		data->temp11[nr] = FUNC7(data, val);
	else if (data->kind == max6657 || data->kind == max6680)
		data->temp11[nr] = FUNC6(val) << 8;
	else if (data->kind == max6646)
		data->temp11[nr] = FUNC8(val) << 8;
	else
		data->temp11[nr] = FUNC5(val);

	FUNC1(client, reg[(nr - 1) * 2],
				  data->temp11[nr] >> 8);
	if (data->kind != max6657 && data->kind != max6680
	    && data->kind != max6646)
		FUNC1(client, reg[(nr - 1) * 2 + 1],
					  data->temp11[nr] & 0xff);
	FUNC3(&data->update_lock);
	return count;
}