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
typedef  int /*<<< orphan*/  u16 ;
struct i2c_algo_dp_aux_data {int running; int /*<<< orphan*/  address; } ;
struct i2c_adapter {struct i2c_algo_dp_aux_data* algo_data; } ;

/* Variables and functions */
 int MODE_I2C_READ ; 
 int MODE_I2C_START ; 
 int MODE_I2C_WRITE ; 
 int FUNC0 (struct i2c_adapter*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC1(struct i2c_adapter *adapter, u16 address, bool reading)
{
	struct i2c_algo_dp_aux_data *algo_data = adapter->algo_data;
	int mode = MODE_I2C_START;
	int ret;

	if (reading)
		mode |= MODE_I2C_READ;
	else
		mode |= MODE_I2C_WRITE;
	algo_data->address = address;
	algo_data->running = true;
	ret = FUNC0(adapter, mode, 0, NULL);
	return ret;
}