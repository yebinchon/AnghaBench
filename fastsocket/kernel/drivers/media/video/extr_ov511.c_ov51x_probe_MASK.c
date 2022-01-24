#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct usb_ov511 {int num_inputs; int stop_during_set; scalar_t__ bclass; int nr; int /*<<< orphan*/  cbuf_lock; struct usb_ov511* cbuf; TYPE_5__* vdev; int /*<<< orphan*/  lock; int /*<<< orphan*/  usb_path; TYPE_4__* sbuf; TYPE_3__* frame; int /*<<< orphan*/  buf_state; int /*<<< orphan*/  i2c_lock; int /*<<< orphan*/  buf_lock; int /*<<< orphan*/  wq; void* bridge; int /*<<< orphan*/  auto_exp; int /*<<< orphan*/  auto_gain; int /*<<< orphan*/  auto_brt; int /*<<< orphan*/  mirror; int /*<<< orphan*/  backlight; int /*<<< orphan*/  lightfreq; int /*<<< orphan*/  compress; int /*<<< orphan*/  led_policy; int /*<<< orphan*/  iface; struct usb_device* dev; } ;
struct usb_interface_descriptor {int bInterfaceClass; int bInterfaceSubClass; int /*<<< orphan*/  bInterfaceNumber; } ;
struct usb_interface {int /*<<< orphan*/  dev; TYPE_1__* cur_altsetting; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_13__ {int bNumConfigurations; int /*<<< orphan*/  idProduct; int /*<<< orphan*/  idVendor; } ;
struct usb_device {TYPE_2__ descriptor; } ;
struct TYPE_16__ {int minor; int /*<<< orphan*/ * parent; } ;
struct TYPE_15__ {int n; int /*<<< orphan*/  lock; struct usb_ov511* ov; } ;
struct TYPE_14__ {int framenum; int /*<<< orphan*/  wq; } ;
struct TYPE_12__ {struct usb_interface_descriptor desc; } ;

/* Variables and functions */
 scalar_t__ BCL_OV511 ; 
 scalar_t__ BCL_OV518 ; 
 void* BRG_OV511 ; 
 void* BRG_OV511PLUS ; 
 void* BRG_OV518 ; 
 void* BRG_OV518PLUS ; 
 int /*<<< orphan*/  BUF_NOT_ALLOCATED ; 
 int EIO ; 
 int ENODEV ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  OV511_CBUF_SIZE ; 
 int /*<<< orphan*/  OV511_MAX_UNIT_VIDEO ; 
 int OV511_NUMFRAMES ; 
 int OV511_NUMSBUF ; 
 int /*<<< orphan*/  OV511_USB_PATH_LEN ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
#define  PROD_ME2CAM 132 
#define  PROD_OV511 131 
#define  PROD_OV511PLUS 130 
#define  PROD_OV518 129 
#define  PROD_OV518PLUS 128 
 int VEND_MATTEL ; 
 int /*<<< orphan*/  VFL_TYPE_GRABBER ; 
 int /*<<< orphan*/  autobright ; 
 int /*<<< orphan*/  autoexp ; 
 int /*<<< orphan*/  autogain ; 
 int /*<<< orphan*/  backlight ; 
 int /*<<< orphan*/  brglist ; 
 int /*<<< orphan*/  compress ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ dump_bridge ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  fastset ; 
 int FUNC3 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct usb_device* FUNC5 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_ov511*) ; 
 struct usb_ov511* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct usb_ov511* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  led ; 
 int /*<<< orphan*/  lightfreq ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  mirror ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (struct usb_ov511*) ; 
 int ov511_devused ; 
 int /*<<< orphan*/  FUNC15 (struct usb_ov511*) ; 
 scalar_t__ FUNC16 (struct usb_ov511*) ; 
 int /*<<< orphan*/  FUNC17 (struct usb_ov511*) ; 
 scalar_t__ FUNC18 (struct usb_ov511*) ; 
 scalar_t__ FUNC19 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,void*) ; 
 scalar_t__* unit_video ; 
 scalar_t__ FUNC22 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct usb_interface*,struct usb_ov511*) ; 
 int /*<<< orphan*/  vdev_template ; 
 TYPE_5__* FUNC24 () ; 
 int /*<<< orphan*/  FUNC25 (TYPE_5__*) ; 
 int FUNC26 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_5__*,struct usb_ov511*) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_5__*) ; 

__attribute__((used)) static int
FUNC29(struct usb_interface *intf, const struct usb_device_id *id)
{
	struct usb_device *dev = FUNC5(intf);
	struct usb_interface_descriptor *idesc;
	struct usb_ov511 *ov;
	int i, rc, nr;

	FUNC0(1, "probing for device...");

	/* We don't handle multi-config cameras */
	if (dev->descriptor.bNumConfigurations != 1)
		return -ENODEV;

	idesc = &intf->cur_altsetting->desc;

	if (idesc->bInterfaceClass != 0xFF)
		return -ENODEV;
	if (idesc->bInterfaceSubClass != 0x00)
		return -ENODEV;

	if ((ov = FUNC8(sizeof(*ov), GFP_KERNEL)) == NULL) {
		FUNC2("couldn't kmalloc ov struct");
		goto error_out;
	}

	ov->dev = dev;
	ov->iface = idesc->bInterfaceNumber;
	ov->led_policy = led;
	ov->compress = compress;
	ov->lightfreq = lightfreq;
	ov->num_inputs = 1;	   /* Video decoder init functs. change this */
	ov->stop_during_set = !fastset;
	ov->backlight = backlight;
	ov->mirror = mirror;
	ov->auto_brt = autobright;
	ov->auto_gain = autogain;
	ov->auto_exp = autoexp;

	switch (FUNC9(dev->descriptor.idProduct)) {
	case PROD_OV511:
		ov->bridge = BRG_OV511;
		ov->bclass = BCL_OV511;
		break;
	case PROD_OV511PLUS:
		ov->bridge = BRG_OV511PLUS;
		ov->bclass = BCL_OV511;
		break;
	case PROD_OV518:
		ov->bridge = BRG_OV518;
		ov->bclass = BCL_OV518;
		break;
	case PROD_OV518PLUS:
		ov->bridge = BRG_OV518PLUS;
		ov->bclass = BCL_OV518;
		break;
	case PROD_ME2CAM:
		if (FUNC9(dev->descriptor.idVendor) != VEND_MATTEL)
			goto error;
		ov->bridge = BRG_OV511PLUS;
		ov->bclass = BCL_OV511;
		break;
	default:
		FUNC2("Unknown product ID 0x%04x", FUNC9(dev->descriptor.idProduct));
		goto error;
	}

	FUNC1(&intf->dev, "USB %s video device found\n",
		 FUNC21(brglist, ov->bridge));

	FUNC4(&ov->wq);

	FUNC11(&ov->lock);	/* to 1 == available */
	FUNC11(&ov->buf_lock);
	FUNC11(&ov->i2c_lock);
	FUNC11(&ov->cbuf_lock);

	ov->buf_state = BUF_NOT_ALLOCATED;

	if (FUNC22(dev, ov->usb_path, OV511_USB_PATH_LEN) < 0) {
		FUNC2("usb_make_path error");
		goto error;
	}

	/* Allocate control transfer buffer. */
	/* Must be kmalloc()'ed, for DMA compatibility */
	ov->cbuf = FUNC7(OV511_CBUF_SIZE, GFP_KERNEL);
	if (!ov->cbuf)
		goto error;

	if (ov->bclass == BCL_OV518) {
		if (FUNC16(ov) < 0)
			goto error;
	} else {
		if (FUNC14(ov) < 0)
			goto error;
	}

	for (i = 0; i < OV511_NUMFRAMES; i++) {
		ov->frame[i].framenum = i;
		FUNC4(&ov->frame[i].wq);
	}

	for (i = 0; i < OV511_NUMSBUF; i++) {
		ov->sbuf[i].ov = ov;
		FUNC20(&ov->sbuf[i].lock);
		ov->sbuf[i].n = i;
	}

	/* Unnecessary? (This is done on open(). Need to make sure variables
	 * are properly initialized without this before removing it, though). */
	if (FUNC18(ov) < 0)
		goto error;

#ifdef OV511_DEBUG
	if (dump_bridge) {
		if (ov->bclass == BCL_OV511)
			ov511_dump_regs(ov);
		else
			ov518_dump_regs(ov);
	}
#endif

	ov->vdev = FUNC24();
	if (!ov->vdev)
		goto error;

	FUNC10(ov->vdev, &vdev_template, sizeof(*ov->vdev));
	ov->vdev->parent = &intf->dev;
	FUNC27(ov->vdev, ov);

	FUNC12(&ov->lock);

	/* Check to see next free device and mark as used */
	nr = FUNC3(&ov511_devused, OV511_MAX_UNIT_VIDEO);

	/* Registers device */
	if (unit_video[nr] != 0)
		rc = FUNC26(ov->vdev, VFL_TYPE_GRABBER,
					   unit_video[nr]);
	else
		rc = FUNC26(ov->vdev, VFL_TYPE_GRABBER, -1);

	if (rc < 0) {
		FUNC2("video_register_device failed");
		FUNC13(&ov->lock);
		goto error;
	}

	/* Mark device as used */
	ov511_devused |= 1 << nr;
	ov->nr = nr;

	FUNC1(&intf->dev, "Device at %s registered to minor %d\n",
		 ov->usb_path, ov->vdev->minor);

	FUNC23(intf, ov);
	if (FUNC19(ov->vdev)) {
		FUNC2("ov_create_sysfs failed");
		ov511_devused &= ~(1 << nr);
		FUNC13(&ov->lock);
		goto error;
	}

	FUNC13(&ov->lock);

	return 0;

error:
	if (ov->vdev) {
		if (-1 == ov->vdev->minor)
			FUNC25(ov->vdev);
		else
			FUNC28(ov->vdev);
		ov->vdev = NULL;
	}

	if (ov->cbuf) {
		FUNC12(&ov->cbuf_lock);
		FUNC6(ov->cbuf);
		ov->cbuf = NULL;
		FUNC13(&ov->cbuf_lock);
	}

	FUNC6(ov);
	ov = NULL;

error_out:
	FUNC2("Camera initialization failed");
	return -EIO;
}