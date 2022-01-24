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
struct usb_interface {TYPE_3__* cur_altsetting; int /*<<< orphan*/  dev; } ;
struct usb_endpoint_descriptor {int /*<<< orphan*/  bInterval; int /*<<< orphan*/  bEndpointAddress; } ;
struct usb_device_id {int dummy; } ;
struct usb_device {int dummy; } ;
struct kbtab {int /*<<< orphan*/  data_dma; int /*<<< orphan*/  data; TYPE_4__* irq; struct input_dev* dev; int /*<<< orphan*/  phys; struct usb_device* usbdev; } ;
struct TYPE_7__ {int /*<<< orphan*/ * parent; } ;
struct input_dev {char* name; int* evbit; int* keybit; int* mscbit; int /*<<< orphan*/  close; int /*<<< orphan*/  open; TYPE_1__ dev; int /*<<< orphan*/  id; int /*<<< orphan*/  phys; } ;
struct TYPE_10__ {int /*<<< orphan*/  transfer_flags; int /*<<< orphan*/  transfer_dma; } ;
struct TYPE_9__ {TYPE_2__* endpoint; } ;
struct TYPE_8__ {struct usb_endpoint_descriptor desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_PRESSURE ; 
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BTN_DIGI ; 
 int /*<<< orphan*/  BTN_LEFT ; 
 int /*<<< orphan*/  BTN_MIDDLE ; 
 int /*<<< orphan*/  BTN_RIGHT ; 
 int /*<<< orphan*/  BTN_TOOL_PEN ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_ABS ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  EV_MSC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MSC_SERIAL ; 
 int /*<<< orphan*/  URB_NO_TRANSFER_DMA_MAP ; 
 struct input_dev* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*) ; 
 int FUNC4 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct input_dev*,struct kbtab*) ; 
 struct usb_device* FUNC7 (struct usb_interface*) ; 
 int /*<<< orphan*/  kbtab_close ; 
 int /*<<< orphan*/  kbtab_irq ; 
 int /*<<< orphan*/  kbtab_open ; 
 int /*<<< orphan*/  FUNC8 (struct kbtab*) ; 
 struct kbtab* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_4__* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct usb_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct usb_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*,struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct kbtab*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC16 (struct usb_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct usb_interface*,struct kbtab*) ; 
 int /*<<< orphan*/  FUNC19 (struct usb_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC20(struct usb_interface *intf, const struct usb_device_id *id)
{
	struct usb_device *dev = FUNC7(intf);
	struct usb_endpoint_descriptor *endpoint;
	struct kbtab *kbtab;
	struct input_dev *input_dev;
	int error = -ENOMEM;

	kbtab = FUNC9(sizeof(struct kbtab), GFP_KERNEL);
	input_dev = FUNC2();
	if (!kbtab || !input_dev)
		goto fail1;

	kbtab->data = FUNC12(dev, 8, GFP_KERNEL, &kbtab->data_dma);
	if (!kbtab->data)
		goto fail1;

	kbtab->irq = FUNC11(0, GFP_KERNEL);
	if (!kbtab->irq)
		goto fail2;

	kbtab->usbdev = dev;
	kbtab->dev = input_dev;

	FUNC16(dev, kbtab->phys, sizeof(kbtab->phys));
	FUNC10(kbtab->phys, "/input0", sizeof(kbtab->phys));

	input_dev->name = "KB Gear Tablet";
	input_dev->phys = kbtab->phys;
	FUNC19(dev, &input_dev->id);
	input_dev->dev.parent = &intf->dev;

	FUNC6(input_dev, kbtab);

	input_dev->open = kbtab_open;
	input_dev->close = kbtab_close;

	input_dev->evbit[0] |= FUNC0(EV_KEY) | FUNC0(EV_ABS) |
		FUNC0(EV_MSC);
	input_dev->keybit[FUNC1(BTN_LEFT)] |= FUNC0(BTN_LEFT) |
		FUNC0(BTN_RIGHT) | FUNC0(BTN_MIDDLE);
	input_dev->keybit[FUNC1(BTN_DIGI)] |= FUNC0(BTN_TOOL_PEN) |
		FUNC0(BTN_TOUCH);
	input_dev->mscbit[0] |= FUNC0(MSC_SERIAL);
	FUNC5(input_dev, ABS_X, 0, 0x2000, 4, 0);
	FUNC5(input_dev, ABS_Y, 0, 0x1750, 4, 0);
	FUNC5(input_dev, ABS_PRESSURE, 0, 0xff, 0, 0);

	endpoint = &intf->cur_altsetting->endpoint[0].desc;

	FUNC14(kbtab->irq, dev,
			 FUNC17(dev, endpoint->bEndpointAddress),
			 kbtab->data, 8,
			 kbtab_irq, kbtab, endpoint->bInterval);
	kbtab->irq->transfer_dma = kbtab->data_dma;
	kbtab->irq->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;

	error = FUNC4(kbtab->dev);
	if (error)
		goto fail3;

	FUNC18(intf, kbtab);

	return 0;

 fail3:	FUNC15(kbtab->irq);
 fail2:	FUNC13(dev, 10, kbtab->data, kbtab->data_dma);
 fail1:	FUNC3(input_dev);
	FUNC8(kbtab);
	return error;
}