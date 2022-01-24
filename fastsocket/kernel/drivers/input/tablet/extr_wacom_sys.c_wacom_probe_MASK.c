#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct wacom_wac {int /*<<< orphan*/  data_dma; int /*<<< orphan*/  data; TYPE_4__* irq; struct input_dev* dev; int /*<<< orphan*/  name; struct wacom_wac* wacom_wac; struct wacom_features* features; int /*<<< orphan*/  phys; int /*<<< orphan*/  lock; struct usb_interface* intf; struct usb_device* usbdev; } ;
struct wacom_features {scalar_t__ pktlen; scalar_t__ device_type; int quirks; int /*<<< orphan*/  name; int /*<<< orphan*/  pressure_max; int /*<<< orphan*/  y_max; int /*<<< orphan*/  x_max; } ;
struct wacom {int /*<<< orphan*/  data_dma; int /*<<< orphan*/  data; TYPE_4__* irq; struct input_dev* dev; int /*<<< orphan*/  name; struct wacom* wacom_wac; struct wacom_features* features; int /*<<< orphan*/  phys; int /*<<< orphan*/  lock; struct usb_interface* intf; struct usb_device* usbdev; } ;
struct usb_interface {TYPE_3__* cur_altsetting; int /*<<< orphan*/  dev; } ;
struct usb_endpoint_descriptor {int /*<<< orphan*/  bInterval; int /*<<< orphan*/  bEndpointAddress; } ;
struct usb_device_id {int dummy; } ;
struct usb_device {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/ * parent; } ;
struct input_dev {int* evbit; int* keybit; int* absbit; int /*<<< orphan*/  name; int /*<<< orphan*/  close; int /*<<< orphan*/  open; TYPE_1__ dev; int /*<<< orphan*/  id; } ;
struct TYPE_10__ {int /*<<< orphan*/  transfer_flags; int /*<<< orphan*/  transfer_dma; } ;
struct TYPE_9__ {TYPE_2__* endpoint; } ;
struct TYPE_8__ {struct usb_endpoint_descriptor desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MISC ; 
 int /*<<< orphan*/  ABS_PRESSURE ; 
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BTN_DIGI ; 
 scalar_t__ BTN_TOOL_PEN ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_ABS ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  URB_NO_TRANSFER_DMA_MAP ; 
 scalar_t__ WACOM_PKGLEN_MAX ; 
 int WACOM_QUIRK_MULTI_INPUT ; 
 struct wacom_features* FUNC3 (struct usb_device_id const*) ; 
 struct input_dev* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct input_dev*) ; 
 int FUNC6 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct input_dev*,struct wacom_wac*) ; 
 struct usb_device* FUNC9 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC10 (struct wacom_wac*) ; 
 struct wacom_wac* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_4__* FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct usb_device*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct usb_device*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_4__*,struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,struct wacom_wac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC20 (struct usb_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC21 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct usb_interface*,struct wacom_wac*) ; 
 int /*<<< orphan*/  FUNC23 (struct usb_device*,int /*<<< orphan*/ *) ; 
 int FUNC24 (struct wacom_wac*,struct usb_device*) ; 
 int /*<<< orphan*/  wacom_close ; 
 int /*<<< orphan*/  FUNC25 (struct wacom_wac*) ; 
 int /*<<< orphan*/  FUNC26 (struct input_dev*,struct wacom_wac*) ; 
 int FUNC27 (struct wacom_wac*) ; 
 int /*<<< orphan*/  wacom_open ; 
 int /*<<< orphan*/  FUNC28 (struct usb_interface*,struct wacom_features*) ; 
 int /*<<< orphan*/  FUNC29 (struct wacom_wac*) ; 
 int FUNC30 (struct usb_interface*,struct wacom_features*) ; 
 int /*<<< orphan*/  FUNC31 (struct wacom_features*) ; 
 int /*<<< orphan*/  wacom_sys_irq ; 

__attribute__((used)) static int FUNC32(struct usb_interface *intf, const struct usb_device_id *id)
{
	struct usb_device *dev = FUNC9(intf);
	struct usb_endpoint_descriptor *endpoint;
	struct wacom *wacom;
	struct wacom_wac *wacom_wac;
	struct wacom_features *features;
	struct input_dev *input_dev;
	int error = -ENOMEM;

	wacom = FUNC11(sizeof(struct wacom), GFP_KERNEL);
	wacom_wac = FUNC11(sizeof(struct wacom_wac), GFP_KERNEL);
	input_dev = FUNC4();
	if (!wacom || !input_dev || !wacom_wac)
		goto fail1;

	wacom_wac->data = FUNC16(dev, WACOM_PKGLEN_MAX, GFP_KERNEL, &wacom->data_dma);
	if (!wacom_wac->data)
		goto fail1;

	wacom->irq = FUNC15(0, GFP_KERNEL);
	if (!wacom->irq)
		goto fail2;

	wacom->usbdev = dev;
	wacom->dev = input_dev;
	wacom->intf = intf;
	FUNC12(&wacom->lock);
	FUNC20(dev, wacom->phys, sizeof(wacom->phys));
	FUNC13(wacom->phys, "/input0", sizeof(wacom->phys));

	wacom_wac->features = features = FUNC3(id);
	FUNC2(features->pktlen > WACOM_PKGLEN_MAX);

	error = FUNC24(wacom_wac, dev);
	if (error)
		goto fail3;

	wacom->wacom_wac = wacom_wac;
	FUNC23(dev, &input_dev->id);

	input_dev->dev.parent = &intf->dev;

	FUNC8(input_dev, wacom);

	input_dev->open = wacom_open;
	input_dev->close = wacom_close;

	endpoint = &intf->cur_altsetting->endpoint[0].desc;

	/* Retrieve the physical and logical size for OEM devices */
	error = FUNC30(intf, features);
	if (error)
		goto fail4;

	input_dev->evbit[0] |= FUNC0(EV_KEY) | FUNC0(EV_ABS);
	input_dev->keybit[FUNC1(BTN_DIGI)] |= FUNC0(BTN_TOUCH);
	FUNC7(input_dev, ABS_X, 0, features->x_max, 4, 0);
	FUNC7(input_dev, ABS_Y, 0, features->y_max, 4, 0);
	input_dev->absbit[FUNC1(ABS_MISC)] |= FUNC0(ABS_MISC);

	if (features->device_type == BTN_TOOL_PEN)
		FUNC7(input_dev, ABS_PRESSURE, 0, features->pressure_max, 0, 0);

	FUNC26(input_dev, wacom_wac);

	FUNC31(features);

	FUNC14(wacom_wac->name, features->name, sizeof(wacom_wac->name));

	if (features->quirks & WACOM_QUIRK_MULTI_INPUT) {
		/* Append the device type to the name */
		FUNC13(wacom_wac->name,
			features->device_type == BTN_TOOL_PEN ?
				" Pen" : " Finger",
			sizeof(wacom_wac->name));
	}

	input_dev->name = wacom_wac->name;

	FUNC18(wacom->irq, dev,
			 FUNC21(dev, endpoint->bEndpointAddress),
			 wacom_wac->data, features->pktlen,
			 wacom_sys_irq, wacom, endpoint->bInterval);
	wacom->irq->transfer_dma = wacom->data_dma;
	wacom->irq->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;

	error = FUNC27(wacom);
	if (error)
		goto fail4;

	error = FUNC6(wacom->dev);
	if (error)
		goto fail5;

	/* Note that if query fails it is not a hard failure */
	FUNC28(intf, features);

	FUNC22(intf, wacom);
	return 0;

 fail5: FUNC25(wacom);
 fail4:	FUNC29(wacom_wac);
 fail3:	FUNC19(wacom->irq);
 fail2:	FUNC17(dev, WACOM_PKGLEN_MAX, wacom_wac->data, wacom->data_dma);
 fail1:	FUNC5(input_dev);
	FUNC10(wacom);
	FUNC10(wacom_wac);
	return error;
}