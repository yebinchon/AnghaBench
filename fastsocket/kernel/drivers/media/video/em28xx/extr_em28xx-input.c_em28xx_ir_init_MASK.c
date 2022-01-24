#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_6__ {int version; void* product; void* vendor; int /*<<< orphan*/  bustype; } ;
struct rc_dev {int allowed_protos; int (* change_protocol ) (struct rc_dev*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  driver_name; int /*<<< orphan*/ * map_name; TYPE_3__ dev; TYPE_1__ input_id; int /*<<< orphan*/  input_phys; int /*<<< orphan*/  input_name; int /*<<< orphan*/  close; int /*<<< orphan*/  open; struct em28xx_IR* priv; } ;
struct em28xx_IR {int polling; int /*<<< orphan*/  phys; int /*<<< orphan*/  name; struct rc_dev* rc; struct em28xx* dev; } ;
struct TYPE_9__ {int /*<<< orphan*/ * ir_codes; } ;
struct em28xx {char* name; struct em28xx_IR* ir; TYPE_4__ board; TYPE_5__* udev; } ;
struct TYPE_7__ {int /*<<< orphan*/  idProduct; int /*<<< orphan*/  idVendor; } ;
struct TYPE_10__ {int /*<<< orphan*/  dev; TYPE_2__ descriptor; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_USB ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MODULE_NAME ; 
 int RC_TYPE_NEC ; 
 int RC_TYPE_RC5 ; 
 int /*<<< orphan*/  RC_TYPE_UNKNOWN ; 
 int FUNC0 (struct rc_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  em28xx_ir_start ; 
 int /*<<< orphan*/  em28xx_ir_stop ; 
 int /*<<< orphan*/  FUNC1 (struct em28xx_IR*) ; 
 struct em28xx_IR* FUNC2 (int,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 struct rc_dev* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct rc_dev*) ; 
 int FUNC6 (struct rc_dev*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 

int FUNC10(struct em28xx *dev)
{
	struct em28xx_IR *ir;
	struct rc_dev *rc;
	int err = -ENOMEM;

	if (dev->board.ir_codes == NULL) {
		/* No remote control support */
		return 0;
	}

	ir = FUNC2(sizeof(*ir), GFP_KERNEL);
	rc = FUNC4();
	if (!ir || !rc)
		goto err_out_free;

	/* record handles to ourself */
	ir->dev = dev;
	dev->ir = ir;
	ir->rc = rc;

	/*
	 * em2874 supports more protocols. For now, let's just announce
	 * the two protocols that were already tested
	 */
	rc->allowed_protos = RC_TYPE_RC5 | RC_TYPE_NEC;
	rc->priv = ir;
	rc->change_protocol = em28xx_ir_change_protocol;
	rc->open = em28xx_ir_start;
	rc->close = em28xx_ir_stop;

	/* By default, keep protocol field untouched */
	err = FUNC0(rc, RC_TYPE_UNKNOWN);
	if (err)
		goto err_out_free;

	/* This is how often we ask the chip for IR information */
	ir->polling = 100; /* ms */

	/* init input device */
	FUNC7(ir->name, sizeof(ir->name), "em28xx IR (%s)",
						dev->name);

	FUNC9(dev->udev, ir->phys, sizeof(ir->phys));
	FUNC8(ir->phys, "/input0", sizeof(ir->phys));

	rc->input_name = ir->name;
	rc->input_phys = ir->phys;
	rc->input_id.bustype = BUS_USB;
	rc->input_id.version = 1;
	rc->input_id.vendor = FUNC3(dev->udev->descriptor.idVendor);
	rc->input_id.product = FUNC3(dev->udev->descriptor.idProduct);
	rc->dev.parent = &dev->udev->dev;
	rc->map_name = dev->board.ir_codes;
	rc->driver_name = MODULE_NAME;

	/* all done */
	err = FUNC6(rc);
	if (err)
		goto err_out_stop;

	return 0;

 err_out_stop:
	dev->ir = NULL;
 err_out_free:
	FUNC5(rc);
	FUNC1(ir);
	return err;
}