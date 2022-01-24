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
struct dvb_usb_adapter {TYPE_1__* dev; int /*<<< orphan*/  fe; } ;
struct TYPE_2__ {int /*<<< orphan*/  i2c_adap; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lnbp21_attach ; 
 int /*<<< orphan*/  tda826x_attach ; 

__attribute__((used)) static int FUNC2(struct dvb_usb_adapter *adap)
{
	if (FUNC1(tda826x_attach, adap->fe, 0x60, adap->dev->i2c_adap, 0) == NULL) {
		FUNC0("TDA8263 attach failed\n");
		return -ENODEV;
	}

	if (FUNC1(lnbp21_attach, adap->fe, adap->dev->i2c_adap, 0, 0) == NULL) {
		FUNC0("LNBP21 attach failed\n");
		return -ENODEV;
	}
	return 0;
}