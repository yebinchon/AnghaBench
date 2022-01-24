#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_6__ {int version; void* product; void* vendor; int /*<<< orphan*/  bustype; } ;
struct input_dev {char* name; int* evbit; TYPE_3__ dev; TYPE_2__ id; scalar_t__ keycodemax; scalar_t__ keycodesize; int /*<<< orphan*/  keybit; int /*<<< orphan*/  phys; } ;
struct em28xx {int /*<<< orphan*/  sbutton_query_work; struct input_dev* sbutton_input_dev; TYPE_4__* udev; int /*<<< orphan*/  snapshot_button_path; } ;
struct TYPE_5__ {int /*<<< orphan*/  idProduct; int /*<<< orphan*/  idVendor; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev; TYPE_1__ descriptor; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BUS_USB ; 
 int /*<<< orphan*/  EM28XX_SBUTTON_QUERY_INTERVAL ; 
 int /*<<< orphan*/  EM28XX_SNAPSHOT_KEY ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  EV_REP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  em28xx_query_sbutton ; 
 struct input_dev* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct input_dev*) ; 
 int FUNC6 (struct input_dev*) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 

void FUNC13(struct em28xx *dev)
{
	struct input_dev *input_dev;
	int err;

	FUNC3("Registering snapshot button...\n");
	input_dev = FUNC4();
	if (!input_dev) {
		FUNC2("input_allocate_device failed\n");
		return;
	}

	FUNC12(dev->udev, dev->snapshot_button_path,
		      sizeof(dev->snapshot_button_path));
	FUNC11(dev->snapshot_button_path, "/sbutton",
		sizeof(dev->snapshot_button_path));
	FUNC1(&dev->sbutton_query_work, em28xx_query_sbutton);

	input_dev->name = "em28xx snapshot button";
	input_dev->phys = dev->snapshot_button_path;
	input_dev->evbit[0] = FUNC0(EV_KEY) | FUNC0(EV_REP);
	FUNC10(EM28XX_SNAPSHOT_KEY, input_dev->keybit);
	input_dev->keycodesize = 0;
	input_dev->keycodemax = 0;
	input_dev->id.bustype = BUS_USB;
	input_dev->id.vendor = FUNC7(dev->udev->descriptor.idVendor);
	input_dev->id.product = FUNC7(dev->udev->descriptor.idProduct);
	input_dev->id.version = 1;
	input_dev->dev.parent = &dev->udev->dev;

	err = FUNC6(input_dev);
	if (err) {
		FUNC2("input_register_device failed\n");
		FUNC5(input_dev);
		return;
	}

	dev->sbutton_input_dev = input_dev;
	FUNC9(&dev->sbutton_query_work,
			      FUNC8(EM28XX_SBUTTON_QUERY_INTERVAL));
	return;

}