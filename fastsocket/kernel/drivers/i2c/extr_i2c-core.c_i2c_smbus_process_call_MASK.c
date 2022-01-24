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
union i2c_smbus_data {int word; } ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct i2c_client {int /*<<< orphan*/  flags; int /*<<< orphan*/  addr; int /*<<< orphan*/  adapter; } ;
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  I2C_SMBUS_PROC_CALL ; 
 int /*<<< orphan*/  I2C_SMBUS_WRITE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,union i2c_smbus_data*) ; 

s32 FUNC1(struct i2c_client *client, u8 command, u16 value)
{
	union i2c_smbus_data data;
	int status;
	data.word = value;

	status = FUNC0(client->adapter, client->addr, client->flags,
				I2C_SMBUS_WRITE, command,
				I2C_SMBUS_PROC_CALL, &data);
	return (status < 0) ? status : data.word;
}