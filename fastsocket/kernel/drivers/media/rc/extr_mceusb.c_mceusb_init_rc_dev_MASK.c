#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {struct device* parent; } ;
struct rc_dev {scalar_t__ map_name; int /*<<< orphan*/  driver_name; int /*<<< orphan*/  tx_ir; int /*<<< orphan*/  s_tx_carrier; int /*<<< orphan*/  s_tx_mask; int /*<<< orphan*/  timeout; int /*<<< orphan*/  allowed_protos; int /*<<< orphan*/  driver_type; struct mceusb_dev* priv; TYPE_2__ dev; int /*<<< orphan*/  input_id; int /*<<< orphan*/  input_phys; int /*<<< orphan*/  input_name; } ;
struct TYPE_9__ {int /*<<< orphan*/  no_tx; } ;
struct mceusb_dev {size_t model; TYPE_3__ flags; TYPE_4__* usbdev; int /*<<< orphan*/  phys; int /*<<< orphan*/  name; struct device* dev; } ;
struct device {int dummy; } ;
struct TYPE_11__ {char* name; scalar_t__ rc_map; } ;
struct TYPE_7__ {int /*<<< orphan*/  idProduct; int /*<<< orphan*/  idVendor; } ;
struct TYPE_10__ {TYPE_1__ descriptor; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_NAME ; 
 int /*<<< orphan*/  RC_DRIVER_IR_RAW ; 
 scalar_t__ RC_MAP_RC6_MCE ; 
 int /*<<< orphan*/  RC_TYPE_ALL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_6__* mceusb_model ; 
 int /*<<< orphan*/  mceusb_set_tx_carrier ; 
 int /*<<< orphan*/  mceusb_set_tx_mask ; 
 int /*<<< orphan*/  mceusb_tx_ir ; 
 struct rc_dev* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct rc_dev*) ; 
 int FUNC5 (struct rc_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,char*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct rc_dev *FUNC9(struct mceusb_dev *ir)
{
	struct device *dev = ir->dev;
	struct rc_dev *rc;
	int ret;

	rc = FUNC3();
	if (!rc) {
		FUNC1(dev, "remote dev allocation failed\n");
		goto out;
	}

	FUNC6(ir->name, sizeof(ir->name), "%s (%04x:%04x)",
		 mceusb_model[ir->model].name ?
			mceusb_model[ir->model].name :
			"Media Center Ed. eHome Infrared Remote Transceiver",
		 FUNC2(ir->usbdev->descriptor.idVendor),
		 FUNC2(ir->usbdev->descriptor.idProduct));

	FUNC7(ir->usbdev, ir->phys, sizeof(ir->phys));

	rc->input_name = ir->name;
	rc->input_phys = ir->phys;
	FUNC8(ir->usbdev, &rc->input_id);
	rc->dev.parent = dev;
	rc->priv = ir;
	rc->driver_type = RC_DRIVER_IR_RAW;
	rc->allowed_protos = RC_TYPE_ALL;
	rc->timeout = FUNC0(1000);
	if (!ir->flags.no_tx) {
		rc->s_tx_mask = mceusb_set_tx_mask;
		rc->s_tx_carrier = mceusb_set_tx_carrier;
		rc->tx_ir = mceusb_tx_ir;
	}
	rc->driver_name = DRIVER_NAME;
	rc->map_name = mceusb_model[ir->model].rc_map ?
			mceusb_model[ir->model].rc_map : RC_MAP_RC6_MCE;

	ret = FUNC5(rc);
	if (ret < 0) {
		FUNC1(dev, "remote dev registration failed\n");
		goto out;
	}

	return rc;

out:
	FUNC4(rc);
	return NULL;
}