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
struct i2c_client {int flags; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int I2C_CLIENT_PEC ; 
 int FUNC0 (struct i2c_client*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,int) ; 
 int FUNC2 (struct i2c_client*) ; 
 int FUNC3 (struct i2c_client*,int) ; 

__attribute__((used)) static int FUNC4(struct i2c_client* client, u8 reg, u8 *value)
{
	int err;

 	if (client->flags & I2C_CLIENT_PEC) {
 		err = FUNC0(client, reg);
 		if (err >= 0)
 			err = FUNC2(client);
 	} else
 		err = FUNC3(client, reg);

	if (err < 0) {
		FUNC1(&client->dev, "Register %#02x read failed (%d)\n",
			 reg, err);
		return err;
	}
	*value = err;

	return 0;
}