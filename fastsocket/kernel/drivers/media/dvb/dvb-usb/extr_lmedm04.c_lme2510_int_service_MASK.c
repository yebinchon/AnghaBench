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
struct rc_dev {char* input_name; char* driver_name; int /*<<< orphan*/  input_id; int /*<<< orphan*/  map_name; int /*<<< orphan*/  input_phys; } ;
struct dvb_usb_device {struct rc_dev* rc_dev; int /*<<< orphan*/  udev; int /*<<< orphan*/  rc_phys; } ;
struct dvb_usb_adapter {struct dvb_usb_device* dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  RC_MAP_LME2510 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct dvb_usb_adapter*) ; 
 struct rc_dev* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct rc_dev*) ; 
 int FUNC4 (struct rc_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct rc_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct dvb_usb_adapter *adap)
{
	struct dvb_usb_device *d = adap->dev;
	struct rc_dev *rc;
	int ret;

	FUNC0("STA Configuring Remote");

	rc = FUNC2();
	if (!rc)
		return -ENOMEM;

	FUNC7(d->udev, d->rc_phys, sizeof(d->rc_phys));
	FUNC6(d->rc_phys, "/ir0", sizeof(d->rc_phys));

	rc->input_name = "LME2510 Remote Control";
	rc->input_phys = d->rc_phys;
	rc->map_name = RC_MAP_LME2510;
	rc->driver_name = "LME 2510";
	FUNC8(d->udev, &rc->input_id);

	ret = FUNC4(rc);
	if (ret) {
		FUNC3(rc);
		return ret;
	}
	d->rc_dev = rc;

	/* Start the Interupt */
	ret = FUNC1(adap);
	if (ret < 0) {
		FUNC5(rc);
		FUNC0("INT Unable to start Interupt Service");
		return -ENODEV;
	}

	return 0;
}