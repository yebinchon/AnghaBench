#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct usb_interface {struct usb_host_interface* cur_altsetting; } ;
struct usb_host_interface {TYPE_1__* endpoint; } ;
struct usb_endpoint_descriptor {int /*<<< orphan*/  bInterval; int /*<<< orphan*/  bEndpointAddress; } ;
struct usb_device_id {int dummy; } ;
struct usb_device {int dummy; } ;
struct TYPE_4__ {int bRequestType; int /*<<< orphan*/  wLength; scalar_t__ wIndex; } ;
struct iforce {void* ctrl; void* out; void* irq; int /*<<< orphan*/  edata; TYPE_2__ cr; struct iforce* data; struct usb_device* usbdev; int /*<<< orphan*/  bus; } ;
struct TYPE_3__ {struct usb_endpoint_descriptor desc; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IFORCE_USB ; 
 int USB_DIR_IN ; 
 int USB_RECIP_INTERFACE ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct iforce*) ; 
 int /*<<< orphan*/  iforce_usb_ctrl ; 
 int /*<<< orphan*/  iforce_usb_irq ; 
 int /*<<< orphan*/  iforce_usb_out ; 
 struct usb_device* FUNC2 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC3 (struct iforce*) ; 
 struct iforce* FUNC4 (int,int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*,struct usb_device*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct iforce*) ; 
 int /*<<< orphan*/  FUNC7 (void*,struct usb_device*,int /*<<< orphan*/ ,struct iforce*,int,int /*<<< orphan*/ ,struct iforce*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_interface*,struct iforce*) ; 
 int /*<<< orphan*/  FUNC12 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct usb_interface *intf,
				const struct usb_device_id *id)
{
	struct usb_device *dev = FUNC2(intf);
	struct usb_host_interface *interface;
	struct usb_endpoint_descriptor *epirq, *epout;
	struct iforce *iforce;
	int err = -ENOMEM;

	interface = intf->cur_altsetting;

	epirq = &interface->endpoint[0].desc;
	epout = &interface->endpoint[1].desc;

	if (!(iforce = FUNC4(sizeof(struct iforce) + 32, GFP_KERNEL)))
		goto fail;

	if (!(iforce->irq = FUNC5(0, GFP_KERNEL)))
		goto fail;

	if (!(iforce->out = FUNC5(0, GFP_KERNEL)))
		goto fail;

	if (!(iforce->ctrl = FUNC5(0, GFP_KERNEL)))
		goto fail;

	iforce->bus = IFORCE_USB;
	iforce->usbdev = dev;

	iforce->cr.bRequestType = USB_TYPE_VENDOR | USB_DIR_IN | USB_RECIP_INTERFACE;
	iforce->cr.wIndex = 0;
	iforce->cr.wLength = FUNC0(16);

	FUNC7(iforce->irq, dev, FUNC10(dev, epirq->bEndpointAddress),
			iforce->data, 16, iforce_usb_irq, iforce, epirq->bInterval);

	FUNC7(iforce->out, dev, FUNC12(dev, epout->bEndpointAddress),
			iforce + 1, 32, iforce_usb_out, iforce, epout->bInterval);

	FUNC6(iforce->ctrl, dev, FUNC9(dev, 0),
			(void*) &iforce->cr, iforce->edata, 16, iforce_usb_ctrl, iforce);

	err = FUNC1(iforce);
	if (err)
		goto fail;

	FUNC11(intf, iforce);
	return 0;

fail:
	if (iforce) {
		FUNC8(iforce->irq);
		FUNC8(iforce->out);
		FUNC8(iforce->ctrl);
		FUNC3(iforce);
	}

	return err;
}