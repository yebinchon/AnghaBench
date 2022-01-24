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
struct streamzap_ir {TYPE_3__* usbdev; int /*<<< orphan*/  phys; int /*<<< orphan*/  name; struct device* dev; } ;
struct TYPE_6__ {struct device* parent; } ;
struct rc_dev {int /*<<< orphan*/  map_name; int /*<<< orphan*/  driver_name; int /*<<< orphan*/  allowed_protos; int /*<<< orphan*/  driver_type; struct streamzap_ir* priv; TYPE_2__ dev; int /*<<< orphan*/  input_id; int /*<<< orphan*/  input_phys; int /*<<< orphan*/  input_name; } ;
struct device {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  idProduct; int /*<<< orphan*/  idVendor; } ;
struct TYPE_7__ {TYPE_1__ descriptor; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_NAME ; 
 int /*<<< orphan*/  RC_DRIVER_IR_RAW ; 
 int /*<<< orphan*/  RC_MAP_STREAMZAP ; 
 int /*<<< orphan*/  RC_TYPE_ALL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct rc_dev* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct rc_dev*) ; 
 int FUNC4 (struct rc_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct rc_dev *FUNC9(struct streamzap_ir *sz)
{
	struct rc_dev *rdev;
	struct device *dev = sz->dev;
	int ret;

	rdev = FUNC2();
	if (!rdev) {
		FUNC0(dev, "remote dev allocation failed\n");
		goto out;
	}

	FUNC5(sz->name, sizeof(sz->name), "Streamzap PC Remote Infrared "
		 "Receiver (%04x:%04x)",
		 FUNC1(sz->usbdev->descriptor.idVendor),
		 FUNC1(sz->usbdev->descriptor.idProduct));
	FUNC7(sz->usbdev, sz->phys, sizeof(sz->phys));
	FUNC6(sz->phys, "/input0", sizeof(sz->phys));

	rdev->input_name = sz->name;
	rdev->input_phys = sz->phys;
	FUNC8(sz->usbdev, &rdev->input_id);
	rdev->dev.parent = dev;
	rdev->priv = sz;
	rdev->driver_type = RC_DRIVER_IR_RAW;
	rdev->allowed_protos = RC_TYPE_ALL;
	rdev->driver_name = DRIVER_NAME;
	rdev->map_name = RC_MAP_STREAMZAP;

	ret = FUNC4(rdev);
	if (ret < 0) {
		FUNC0(dev, "remote input device register failed\n");
		goto out;
	}

	return rdev;

out:
	FUNC3(rdev);
	return NULL;
}