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
struct i2c_client {int /*<<< orphan*/  adapter; int /*<<< orphan*/  dev; } ;
struct eeprom_data {int valid; int* data; int /*<<< orphan*/  update_lock; scalar_t__* last_updated; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_READ_I2C_BLOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct eeprom_data* FUNC2 (struct i2c_client*) ; 
 int FUNC3 (struct i2c_client*,int,int,int*) ; 
 int FUNC4 (struct i2c_client*,int) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC8(struct i2c_client *client, u8 slice)
{
	struct eeprom_data *data = FUNC2(client);
	int i;

	FUNC5(&data->update_lock);

	if (!(data->valid & (1 << slice)) ||
	    FUNC7(jiffies, data->last_updated[slice] + 300 * HZ)) {
		FUNC0(&client->dev, "Starting eeprom update, slice %u\n", slice);

		if (FUNC1(client->adapter, I2C_FUNC_SMBUS_READ_I2C_BLOCK)) {
			for (i = slice << 5; i < (slice + 1) << 5; i += 32)
				if (FUNC3(client, i,
							32, data->data + i)
							!= 32)
					goto exit;
		} else {
			for (i = slice << 5; i < (slice + 1) << 5; i += 2) {
				int word = FUNC4(client, i);
				if (word < 0)
					goto exit;
				data->data[i] = word & 0xff;
				data->data[i + 1] = word >> 8;
			}
		}
		data->last_updated[slice] = jiffies;
		data->valid |= (1 << slice);
	}
exit:
	FUNC6(&data->update_lock);
}