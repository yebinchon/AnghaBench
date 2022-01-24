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
typedef  int /*<<< orphan*/  u16 ;
struct dvb_usb_device {int /*<<< orphan*/  rc_dev; } ;
struct dvb_usb_adapter {struct dvb_usb_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct dvb_usb_adapter *adap, u16 keypress)
{
	struct dvb_usb_device *d = adap->dev;

	FUNC0(1, "INT Key Keypress =%04x", keypress);

	if (keypress > 0)
		FUNC1(d->rc_dev, keypress, 0);

	return 0;
}