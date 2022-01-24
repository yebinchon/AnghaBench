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
struct usb_interface {int /*<<< orphan*/  dev; struct usb_host_interface* cur_altsetting; } ;
struct TYPE_7__ {int bNumEndpoints; } ;
struct usb_host_interface {TYPE_2__* endpoint; TYPE_1__ desc; } ;
struct usb_endpoint_descriptor {int bEndpointAddress; } ;
struct usb_device_id {scalar_t__ driver_info; } ;
struct usb_device {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/ * parent; } ;
struct input_dev {char* name; int /*<<< orphan*/  keybit; int /*<<< orphan*/  evbit; int /*<<< orphan*/  close; int /*<<< orphan*/  open; TYPE_3__ dev; int /*<<< orphan*/  id; int /*<<< orphan*/  phys; } ;
struct atp_info {int xsensors; int xfact; int ysensors; int yfact; int /*<<< orphan*/  datalen; int /*<<< orphan*/  callback; } ;
struct atp {int overflow_warned; TYPE_4__* urb; int /*<<< orphan*/  data; struct atp_info const* info; struct usb_device* udev; int /*<<< orphan*/  work; struct input_dev* input; int /*<<< orphan*/  phys; } ;
struct TYPE_10__ {int /*<<< orphan*/  transfer_dma; } ;
struct TYPE_8__ {struct usb_endpoint_descriptor desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_PRESSURE ; 
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  ATP_FUZZ ; 
 int ATP_PRESSURE ; 
 int /*<<< orphan*/  BTN_LEFT ; 
 int /*<<< orphan*/  BTN_TOOL_DOUBLETAP ; 
 int /*<<< orphan*/  BTN_TOOL_FINGER ; 
 int /*<<< orphan*/  BTN_TOOL_TRIPLETAP ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_ABS ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  atp_close ; 
 int FUNC1 (struct atp*) ; 
 int /*<<< orphan*/  atp_open ; 
 int /*<<< orphan*/  atp_reinit ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct input_dev* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*) ; 
 int FUNC5 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct input_dev*,struct atp*) ; 
 struct usb_device* FUNC8 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC9 (struct atp*) ; 
 struct atp* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_4__* FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (struct usb_endpoint_descriptor*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_4__*,struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct atp*,int) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC19 (struct usb_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (struct usb_device*,int) ; 
 int /*<<< orphan*/  FUNC21 (struct usb_interface*,struct atp*) ; 
 int /*<<< orphan*/  FUNC22 (struct usb_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC23(struct usb_interface *iface,
		     const struct usb_device_id *id)
{
	struct atp *dev;
	struct input_dev *input_dev;
	struct usb_device *udev = FUNC8(iface);
	struct usb_host_interface *iface_desc;
	struct usb_endpoint_descriptor *endpoint;
	int int_in_endpointAddr = 0;
	int i, error = -ENOMEM;
	const struct atp_info *info = (const struct atp_info *)id->driver_info;

	/* set up the endpoint information */
	/* use only the first interrupt-in endpoint */
	iface_desc = iface->cur_altsetting;
	for (i = 0; i < iface_desc->desc.bNumEndpoints; i++) {
		endpoint = &iface_desc->endpoint[i].desc;
		if (!int_in_endpointAddr && FUNC16(endpoint)) {
			/* we found an interrupt in endpoint */
			int_in_endpointAddr = endpoint->bEndpointAddress;
			break;
		}
	}
	if (!int_in_endpointAddr) {
		FUNC2("Could not find int-in endpoint");
		return -EIO;
	}

	/* allocate memory for our device state and initialize it */
	dev = FUNC10(sizeof(struct atp), GFP_KERNEL);
	input_dev = FUNC3();
	if (!dev || !input_dev) {
		FUNC2("Out of memory");
		goto err_free_devs;
	}

	dev->udev = udev;
	dev->input = input_dev;
	dev->info = info;
	dev->overflow_warned = false;

	dev->urb = FUNC13(0, GFP_KERNEL);
	if (!dev->urb)
		goto err_free_devs;

	dev->data = FUNC14(dev->udev, dev->info->datalen, GFP_KERNEL,
				     &dev->urb->transfer_dma);
	if (!dev->data)
		goto err_free_urb;

	FUNC17(dev->urb, udev,
			 FUNC20(udev, int_in_endpointAddr),
			 dev->data, dev->info->datalen,
			 dev->info->callback, dev, 1);

	error = FUNC1(dev);
	if (error)
		goto err_free_buffer;

	FUNC19(udev, dev->phys, sizeof(dev->phys));
	FUNC12(dev->phys, "/input0", sizeof(dev->phys));

	input_dev->name = "appletouch";
	input_dev->phys = dev->phys;
	FUNC22(dev->udev, &input_dev->id);
	input_dev->dev.parent = &iface->dev;

	FUNC7(input_dev, dev);

	input_dev->open = atp_open;
	input_dev->close = atp_close;

	FUNC11(EV_ABS, input_dev->evbit);

	FUNC6(input_dev, ABS_X, 0,
			     (dev->info->xsensors - 1) * dev->info->xfact - 1,
			     ATP_FUZZ, 0);
	FUNC6(input_dev, ABS_Y, 0,
			     (dev->info->ysensors - 1) * dev->info->yfact - 1,
			     ATP_FUZZ, 0);
	FUNC6(input_dev, ABS_PRESSURE, 0, ATP_PRESSURE, 0, 0);

	FUNC11(EV_KEY, input_dev->evbit);
	FUNC11(BTN_TOUCH, input_dev->keybit);
	FUNC11(BTN_TOOL_FINGER, input_dev->keybit);
	FUNC11(BTN_TOOL_DOUBLETAP, input_dev->keybit);
	FUNC11(BTN_TOOL_TRIPLETAP, input_dev->keybit);
	FUNC11(BTN_LEFT, input_dev->keybit);

	error = FUNC5(dev->input);
	if (error)
		goto err_free_buffer;

	/* save our data pointer in this interface device */
	FUNC21(iface, dev);

	FUNC0(&dev->work, atp_reinit);

	return 0;

 err_free_buffer:
	FUNC15(dev->udev, dev->info->datalen,
			dev->data, dev->urb->transfer_dma);
 err_free_urb:
	FUNC18(dev->urb);
 err_free_devs:
	FUNC21(iface, NULL);
	FUNC9(dev);
	FUNC4(input_dev);
	return error;
}