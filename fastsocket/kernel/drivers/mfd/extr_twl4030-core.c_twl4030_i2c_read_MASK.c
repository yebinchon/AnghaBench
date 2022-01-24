#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
struct twl4030_client {int /*<<< orphan*/  xfer_lock; struct i2c_msg* xfer_msg; TYPE_1__* client; int /*<<< orphan*/  address; } ;
struct i2c_msg {int len; size_t* buf; scalar_t__ flags; int /*<<< orphan*/  addr; } ;
struct TYPE_4__ {int sid; size_t base; } ;
struct TYPE_3__ {int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_NAME ; 
 int EPERM ; 
 scalar_t__ I2C_M_RD ; 
 size_t TWL4030_MODULE_LAST ; 
 int FUNC0 (int /*<<< orphan*/ ,struct i2c_msg*,int) ; 
 int /*<<< orphan*/  inuse ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* twl4030_map ; 
 struct twl4030_client* twl4030_modules ; 
 scalar_t__ FUNC4 (int) ; 

int FUNC5(u8 mod_no, u8 *value, u8 reg, unsigned num_bytes)
{
	int ret;
	u8 val;
	int sid;
	struct twl4030_client *twl;
	struct i2c_msg *msg;

	if (FUNC4(mod_no > TWL4030_MODULE_LAST)) {
		FUNC3("%s: invalid module number %d\n", DRIVER_NAME, mod_no);
		return -EPERM;
	}
	sid = twl4030_map[mod_no].sid;
	twl = &twl4030_modules[sid];

	if (FUNC4(!inuse)) {
		FUNC3("%s: client %d is not initialized\n", DRIVER_NAME, sid);
		return -EPERM;
	}
	FUNC1(&twl->xfer_lock);
	/* [MSG1] fill the register address data */
	msg = &twl->xfer_msg[0];
	msg->addr = twl->address;
	msg->len = 1;
	msg->flags = 0;	/* Read the register value */
	val = twl4030_map[mod_no].base + reg;
	msg->buf = &val;
	/* [MSG2] fill the data rx buffer */
	msg = &twl->xfer_msg[1];
	msg->addr = twl->address;
	msg->flags = I2C_M_RD;	/* Read the register value */
	msg->len = num_bytes;	/* only n bytes */
	msg->buf = value;
	ret = FUNC0(twl->client->adapter, twl->xfer_msg, 2);
	FUNC2(&twl->xfer_lock);

	/* i2cTransfer returns num messages.translate it pls.. */
	if (ret >= 0)
		ret = 0;
	return ret;
}