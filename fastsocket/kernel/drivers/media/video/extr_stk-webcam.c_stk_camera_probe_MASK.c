#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct usb_interface {struct usb_host_interface* cur_altsetting; } ;
struct TYPE_4__ {int bNumEndpoints; } ;
struct usb_host_interface {TYPE_2__* endpoint; TYPE_1__ desc; } ;
struct usb_endpoint_descriptor {int dummy; } ;
struct usb_device_id {int dummy; } ;
struct usb_device {int dummy; } ;
struct TYPE_6__ {int brightness; int /*<<< orphan*/  mode; int /*<<< orphan*/  palette; int /*<<< orphan*/  hflip; int /*<<< orphan*/  vflip; } ;
struct stk_camera {int frame_size; int /*<<< orphan*/  sio_full; int /*<<< orphan*/  sio_avail; TYPE_3__ vsettings; scalar_t__ isoc_ep; scalar_t__ n_sbufs; struct usb_interface* interface; struct usb_device* udev; int /*<<< orphan*/  wait_frame; int /*<<< orphan*/  spinlock; } ;
struct TYPE_5__ {struct usb_endpoint_descriptor desc; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MODE_VGA ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  V4L2_PIX_FMT_RGB565 ; 
 int /*<<< orphan*/  hflip ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct usb_device* FUNC3 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC4 (struct stk_camera*) ; 
 struct stk_camera* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct stk_camera*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct stk_camera*) ; 
 scalar_t__ FUNC9 (struct usb_endpoint_descriptor*) ; 
 scalar_t__ FUNC10 (struct usb_endpoint_descriptor*) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC12 (struct usb_interface*,struct stk_camera*) ; 
 int /*<<< orphan*/  vflip ; 

__attribute__((used)) static int FUNC13(struct usb_interface *interface,
		const struct usb_device_id *id)
{
	int i;
	int err = 0;

	struct stk_camera *dev = NULL;
	struct usb_device *udev = FUNC3(interface);
	struct usb_host_interface *iface_desc;
	struct usb_endpoint_descriptor *endpoint;

	dev = FUNC5(sizeof(struct stk_camera), GFP_KERNEL);
	if (dev == NULL) {
		FUNC1("Out of memory !\n");
		return -ENOMEM;
	}

	FUNC7(&dev->spinlock);
	FUNC2(&dev->wait_frame);

	dev->udev = udev;
	dev->interface = interface;
	FUNC11(interface);

	dev->vsettings.vflip = vflip;
	dev->vsettings.hflip = hflip;
	dev->n_sbufs = 0;
	FUNC6(dev);

	/* Set up the endpoint information
	 * use only the first isoc-in endpoint
	 * for the current alternate setting */
	iface_desc = interface->cur_altsetting;

	for (i = 0; i < iface_desc->desc.bNumEndpoints; ++i) {
		endpoint = &iface_desc->endpoint[i].desc;

		if (!dev->isoc_ep
			&& FUNC9(endpoint)) {
			/* we found an isoc in endpoint */
			dev->isoc_ep = FUNC10(endpoint);
			break;
		}
	}
	if (!dev->isoc_ep) {
		FUNC1("Could not find isoc-in endpoint");
		err = -ENODEV;
		goto error;
	}
	dev->vsettings.brightness = 0x7fff;
	dev->vsettings.palette = V4L2_PIX_FMT_RGB565;
	dev->vsettings.mode = MODE_VGA;
	dev->frame_size = 640 * 480 * 2;

	FUNC0(&dev->sio_avail);
	FUNC0(&dev->sio_full);

	FUNC12(interface, dev);

	err = FUNC8(dev);
	if (err) {
		goto error;
	}

	return 0;

error:
	FUNC4(dev);
	return err;
}