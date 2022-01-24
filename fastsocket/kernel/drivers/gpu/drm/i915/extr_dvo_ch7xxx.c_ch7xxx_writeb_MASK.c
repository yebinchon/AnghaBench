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
typedef  int uint8_t ;
struct intel_dvo_device {int /*<<< orphan*/  slave_addr; struct i2c_adapter* i2c_bus; struct ch7xxx_priv* dev_priv; } ;
struct i2c_msg {int len; int* buf; int /*<<< orphan*/  flags; int /*<<< orphan*/  addr; } ;
struct i2c_adapter {int /*<<< orphan*/  name; } ;
struct ch7xxx_priv {int /*<<< orphan*/  quiet; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct i2c_adapter*,struct i2c_msg*,int) ; 

__attribute__((used)) static bool FUNC2(struct intel_dvo_device *dvo, int addr, uint8_t ch)
{
	struct ch7xxx_priv *ch7xxx = dvo->dev_priv;
	struct i2c_adapter *adapter = dvo->i2c_bus;
	uint8_t out_buf[2];
	struct i2c_msg msg = {
		.addr = dvo->slave_addr,
		.flags = 0,
		.len = 2,
		.buf = out_buf,
	};

	out_buf[0] = addr;
	out_buf[1] = ch;

	if (FUNC1(adapter, &msg, 1) == 1)
		return true;

	if (!ch7xxx->quiet) {
		FUNC0("Unable to write register 0x%02x to %s:%d.\n",
			  addr, adapter->name, dvo->slave_addr);
	}

	return false;
}