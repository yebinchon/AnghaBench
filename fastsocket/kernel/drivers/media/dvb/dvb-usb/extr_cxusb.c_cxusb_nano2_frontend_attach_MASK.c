#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct dvb_usb_adapter {TYPE_1__* dev; int /*<<< orphan*/ * fe; } ;
struct TYPE_4__ {int /*<<< orphan*/  i2c_adap; int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_DIGITAL ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cxusb_mt352_xc3028_config ; 
 int /*<<< orphan*/  cxusb_zl10353_xc3028_config ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  mt352_attach ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  zl10353_attach ; 

__attribute__((used)) static int FUNC6(struct dvb_usb_adapter *adap)
{
	if (FUNC5(adap->dev->udev, 0, 1) < 0)
		FUNC4("set interface failed");

	FUNC2(adap->dev, CMD_DIGITAL, NULL, 0, NULL, 0);

	/* reset the tuner and demodulator */
	FUNC1(adap->dev, 0x04, 0);
	FUNC0(adap->dev, 0x01, 1);
	FUNC0(adap->dev, 0x02, 1);

	if ((adap->fe = FUNC3(zl10353_attach,
				   &cxusb_zl10353_xc3028_config,
				   &adap->dev->i2c_adap)) != NULL)
		return 0;

	if ((adap->fe = FUNC3(mt352_attach,
				   &cxusb_mt352_xc3028_config,
				   &adap->dev->i2c_adap)) != NULL)
		return 0;

	return -EIO;
}