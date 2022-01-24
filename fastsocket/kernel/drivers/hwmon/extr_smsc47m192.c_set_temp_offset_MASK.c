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
struct smsc47m192_data {int* temp_offset; int /*<<< orphan*/  update_lock; } ;
struct sensor_device_attribute {int index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  SMSC47M192_REG_SFR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (long) ; 
 struct smsc47m192_data* FUNC2 (struct i2c_client*) ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 long FUNC7 (char const*,int /*<<< orphan*/ *,int) ; 
 struct i2c_client* FUNC8 (struct device*) ; 
 struct sensor_device_attribute* FUNC9 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC10(struct device *dev, struct device_attribute
		*attr, const char *buf, size_t count)
{
	struct sensor_device_attribute *sensor_attr = FUNC9(attr);
	int nr = sensor_attr->index;
	struct i2c_client *client = FUNC8(dev);
	struct smsc47m192_data *data = FUNC2(client);
	u8 sfr = FUNC3(client, SMSC47M192_REG_SFR);
	long val = FUNC7(buf, NULL, 10);

	FUNC5(&data->update_lock);
	data->temp_offset[nr] = FUNC1(val);
	if (nr>1)
		FUNC4(client,
			FUNC0(nr), data->temp_offset[nr]);
	else if (data->temp_offset[nr] != 0) {
		/* offset[0] and offset[1] share the same register,
			SFR bit 4 activates offset[0] */
		FUNC4(client, SMSC47M192_REG_SFR,
					(sfr & 0xef) | (nr==0 ? 0x10 : 0));
		data->temp_offset[1-nr] = 0;
		FUNC4(client,
			FUNC0(nr), data->temp_offset[nr]);
	} else if ((sfr & 0x10) == (nr==0 ? 0x10 : 0))
		FUNC4(client,
					FUNC0(nr), 0);
	FUNC6(&data->update_lock);
	return count;
}