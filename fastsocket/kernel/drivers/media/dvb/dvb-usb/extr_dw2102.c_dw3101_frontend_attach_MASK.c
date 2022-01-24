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
struct dvb_usb_adapter {int /*<<< orphan*/ * fe; TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  i2c_adap; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  dw3101_tda10023_config ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  tda10023_attach ; 

__attribute__((used)) static int FUNC2(struct dvb_usb_adapter *d)
{
	d->fe = FUNC0(tda10023_attach, &dw3101_tda10023_config,
				&d->dev->i2c_adap, 0x48);
	if (d->fe != NULL) {
		FUNC1("Attached tda10023!\n");
		return 0;
	}
	return -EIO;
}