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
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  I2C_FUNC_I2C ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct i2c_client*,int*,unsigned int) ; 
 int FUNC3 (struct i2c_client*) ; 
 int FUNC4 (struct i2c_client*,int) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client,
			     u8 inireg, u8 *buffer, unsigned int count)
{
	int error, idx = 0;

	/*
	 * Can't use SMBus block data read. Check for I2C functionality to speed
	 * things up whenever possible. Otherwise we will be forced to read
	 * sequentially.
	 */
	if (FUNC1(client->adapter, I2C_FUNC_I2C))	{

		error = FUNC4(client, inireg + idx);
		if (error) {
			FUNC0(&client->dev,
				"couldn't send request. Returned %d\n", error);
			return error;
		}

		error = FUNC2(client, buffer, count);
		if (error != count) {
			FUNC0(&client->dev,
				"couldn't read registers. Returned %d bytes\n", error);
			return error;
		}
	} else {

		while (count--) {
			int data;

			error = FUNC4(client, inireg + idx);
			if (error) {
				FUNC0(&client->dev,
					"couldn't send request. Returned %d\n", error);
				return error;
			}

			data = FUNC3(client);
			if (data < 0) {
				FUNC0(&client->dev,
					"couldn't read register. Returned %d\n", data);
				return data;
			}

			buffer[idx++] = data;
		}
	}

	return 0;
}