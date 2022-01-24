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
struct i2c_msg {int len; int /*<<< orphan*/ * buf; int /*<<< orphan*/  addr; } ;
struct dibx000_i2c_master {int selected_interface; int /*<<< orphan*/  i2c_adap; int /*<<< orphan*/  i2c_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIBX000_I2C_INTERFACE_TUNER ; 
 int /*<<< orphan*/  FUNC0 (struct dibx000_i2c_master*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dibx000_i2c_master*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct i2c_msg*,int) ; 

void FUNC3(struct dibx000_i2c_master *mst)
{
	/* initialize the i2c-master by closing the gate */
	u8 tx[4];
	struct i2c_msg m = {.addr = mst->i2c_addr,.buf = tx,.len = 4 };

	FUNC0(mst, tx, 0, 0);
	FUNC2(mst->i2c_adap, &m, 1);
	mst->selected_interface = 0xff;	// the first time force a select of the I2C
	FUNC1(mst, DIBX000_I2C_INTERFACE_TUNER);
}