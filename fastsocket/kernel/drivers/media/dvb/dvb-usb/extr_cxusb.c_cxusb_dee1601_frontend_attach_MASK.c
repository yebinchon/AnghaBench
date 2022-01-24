#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct dvb_usb_adapter {TYPE_1__* dev; int /*<<< orphan*/ * fe; } ;
struct TYPE_2__ {int /*<<< orphan*/  i2c_adap; int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_DIGITAL ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cxusb_dee1601_config ; 
 int /*<<< orphan*/  cxusb_zl10353_dee1601_config ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  mt352_attach ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  zl10353_attach ; 

__attribute__((used)) static int FUNC4(struct dvb_usb_adapter *adap)
{
	if (FUNC3(adap->dev->udev, 0, 0) < 0)
		FUNC2("set interface failed");

	FUNC0(adap->dev, CMD_DIGITAL, NULL, 0, NULL, 0);

	if (((adap->fe = FUNC1(mt352_attach, &cxusb_dee1601_config,
				    &adap->dev->i2c_adap)) != NULL) ||
		((adap->fe = FUNC1(zl10353_attach,
					&cxusb_zl10353_dee1601_config,
					&adap->dev->i2c_adap)) != NULL))
		return 0;

	return -EIO;
}