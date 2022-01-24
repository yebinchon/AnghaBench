#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct i2c_msg {int addr; int* buf; int len; int /*<<< orphan*/  flags; } ;
struct dvb_usb_adapter {TYPE_2__* dev; int /*<<< orphan*/ * fe; } ;
struct TYPE_5__ {int /*<<< orphan*/ * rc_key_map; } ;
struct TYPE_6__ {TYPE_1__ props; int /*<<< orphan*/  i2c_adap; int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_DIGITAL ; 
 int EIO ; 
 int /*<<< orphan*/  I2C_M_RD ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct i2c_msg*,int) ; 
 int /*<<< orphan*/  cxusb_zl10353_xc3028_config_no_i2c_gate ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  zl10353_attach ; 

__attribute__((used)) static int FUNC9(struct dvb_usb_adapter *adap)
{
	u8 ircode[4];
	int i;
	struct i2c_msg msg = { .addr = 0x6b, .flags = I2C_M_RD,
			       .buf = ircode, .len = 4 };

	if (FUNC8(adap->dev->udev, 0, 1) < 0)
		FUNC5("set interface failed");

	FUNC2(adap->dev, CMD_DIGITAL, NULL, 0, NULL, 0);

	/* reset the tuner and demodulator */
	FUNC1(adap->dev, 0x04, 0);
	FUNC0(adap->dev, 0x01, 1);
	FUNC0(adap->dev, 0x02, 1);

	if ((adap->fe = FUNC4(zl10353_attach,
				   &cxusb_zl10353_xc3028_config_no_i2c_gate,
				   &adap->dev->i2c_adap)) == NULL)
		return -EIO;

	/* try to determine if there is no IR decoder on the I2C bus */
	for (i = 0; adap->dev->props.rc_key_map != NULL && i < 5; i++) {
		FUNC7(20);
		if (FUNC3(&adap->dev->i2c_adap, &msg, 1) != 1)
			goto no_IR;
		if (ircode[0] == 0 && ircode[1] == 0)
			continue;
		if (ircode[2] + ircode[3] != 0xff) {
no_IR:
			adap->dev->props.rc_key_map = NULL;
			FUNC6("No IR receiver detected on this device.");
			break;
		}
	}

	return 0;
}