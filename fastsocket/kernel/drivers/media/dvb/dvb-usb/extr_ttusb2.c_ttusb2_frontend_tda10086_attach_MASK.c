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
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  tda10086_attach ; 
 int /*<<< orphan*/  tda10086_config ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct dvb_usb_adapter *adap)
{
	if (FUNC3(adap->dev->udev,0,3) < 0)
		FUNC2("set interface to alts=3 failed");

	if ((adap->fe = FUNC1(tda10086_attach, &tda10086_config, &adap->dev->i2c_adap)) == NULL) {
		FUNC0("TDA10086 attach failed\n");
		return -ENODEV;
	}

	return 0;
}