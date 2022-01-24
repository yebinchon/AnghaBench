#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct i2c_msg {int* buf; int len; int addr; int /*<<< orphan*/  flags; } ;
struct dvb_usb_adapter {TYPE_3__* fe; TYPE_1__* dev; struct dibusb_state* priv; } ;
struct dibusb_state {int tuner_addr; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* i2c_gate_ctrl ) (TYPE_3__*,int) ;} ;
struct TYPE_7__ {TYPE_2__ ops; } ;
struct TYPE_5__ {int /*<<< orphan*/  i2c_adap; } ;

/* Variables and functions */
 int EREMOTEIO ; 
 int /*<<< orphan*/  I2C_M_RD ; 
 int FUNC0 (struct dvb_usb_adapter*) ; 
 int FUNC1 (struct dvb_usb_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct i2c_msg*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int) ; 

__attribute__((used)) static int FUNC7(struct dvb_usb_adapter *adap)
{
	u8 b[2] = { 0,0 }, b2[1];
	int ret = 0;
	struct i2c_msg msg[2] = {
		{ .flags = 0,        .buf = b,  .len = 2 },
		{ .flags = I2C_M_RD, .buf = b2, .len = 1 },
	};
	struct dibusb_state *st = adap->priv;

	/* the Panasonic sits on I2C addrass 0x60, the Thomson on 0x61 */
	msg[0].addr = msg[1].addr = st->tuner_addr = 0x60;

	if (adap->fe->ops.i2c_gate_ctrl)
		adap->fe->ops.i2c_gate_ctrl(adap->fe,1);

	if (FUNC3(&adap->dev->i2c_adap, msg, 2) != 2) {
		FUNC2("tuner i2c write failed.");
		ret = -EREMOTEIO;
	}

	if (adap->fe->ops.i2c_gate_ctrl)
		adap->fe->ops.i2c_gate_ctrl(adap->fe,0);

	if (b2[0] == 0xfe) {
		FUNC4("This device has the Thomson Cable onboard. Which is default.");
		ret = FUNC1(adap);
	} else {
		FUNC4("This device has the Panasonic ENV77H11D5 onboard.");
		ret = FUNC0(adap);
	}

	return ret;
}