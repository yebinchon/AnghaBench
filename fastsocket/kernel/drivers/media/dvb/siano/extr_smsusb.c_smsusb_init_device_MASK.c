#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct usb_interface {int dummy; } ;
struct smsusb_device_t {int /*<<< orphan*/  coredev; TYPE_3__* surbs; TYPE_4__* udev; int /*<<< orphan*/  buffer_size; int /*<<< orphan*/  response_alignment; } ;
struct smsdevice_params_t {int device_type; int /*<<< orphan*/  devpath; struct smsusb_device_t* context; int /*<<< orphan*/  sendrequest_handler; int /*<<< orphan*/  num_buffers; int /*<<< orphan*/  buffer_size; int /*<<< orphan*/ * device; int /*<<< orphan*/  flags; int /*<<< orphan*/  detectmode_handler; int /*<<< orphan*/  setmode_handler; } ;
struct SmsMsgHdr_ST {int dummy; } ;
typedef  int /*<<< orphan*/  params ;
struct TYPE_11__ {int type; } ;
struct TYPE_10__ {int /*<<< orphan*/  dev; TYPE_2__** ep_in; } ;
struct TYPE_9__ {int /*<<< orphan*/  urb; struct smsusb_device_t* dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  wMaxPacketSize; } ;
struct TYPE_8__ {TYPE_1__ desc; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MAX_BUFFERS ; 
 int MAX_URBS ; 
 int /*<<< orphan*/  SMS_DEVICE_FAMILY2 ; 
#define  SMS_NOVA_A0 131 
#define  SMS_NOVA_B0 130 
#define  SMS_STELLAR 129 
#define  SMS_VEGA 128 
 int /*<<< orphan*/  USB1_BUFFER_SIZE ; 
 int /*<<< orphan*/  USB2_BUFFER_SIZE ; 
 TYPE_4__* FUNC0 (struct usb_interface*) ; 
 struct smsusb_device_t* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct smsdevice_params_t*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 TYPE_5__* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int FUNC7 (struct smsdevice_params_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  smsusb1_detectmode ; 
 int /*<<< orphan*/  smsusb1_setmode ; 
 int /*<<< orphan*/  smsusb_sendrequest ; 
 int FUNC10 (struct smsusb_device_t*) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct usb_interface*,struct smsusb_device_t*) ; 

__attribute__((used)) static int FUNC15(struct usb_interface *intf, int board_id)
{
	struct smsdevice_params_t params;
	struct smsusb_device_t *dev;
	int i, rc;

	/* create device object */
	dev = FUNC1(sizeof(struct smsusb_device_t), GFP_KERNEL);
	if (!dev) {
		FUNC4("kzalloc(sizeof(struct smsusb_device_t) failed");
		return -ENOMEM;
	}

	FUNC3(&params, 0, sizeof(params));
	FUNC14(intf, dev);
	dev->udev = FUNC0(intf);

	params.device_type = FUNC5(board_id)->type;

	switch (params.device_type) {
	case SMS_STELLAR:
		dev->buffer_size = USB1_BUFFER_SIZE;

		params.setmode_handler = smsusb1_setmode;
		params.detectmode_handler = smsusb1_detectmode;
		break;
	default:
		FUNC4("Unspecified sms device type!");
		/* fall-thru */
	case SMS_NOVA_A0:
	case SMS_NOVA_B0:
	case SMS_VEGA:
		dev->buffer_size = USB2_BUFFER_SIZE;
		dev->response_alignment =
		    FUNC2(dev->udev->ep_in[1]->desc.wMaxPacketSize) -
		    sizeof(struct SmsMsgHdr_ST);

		params.flags |= SMS_DEVICE_FAMILY2;
		break;
	}

	params.device = &dev->udev->dev;
	params.buffer_size = dev->buffer_size;
	params.num_buffers = MAX_BUFFERS;
	params.sendrequest_handler = smsusb_sendrequest;
	params.context = dev;
	FUNC13(dev->udev, params.devpath, sizeof(params.devpath));

	/* register in smscore */
	rc = FUNC7(&params, &dev->coredev);
	if (rc < 0) {
		FUNC4("smscore_register_device(...) failed, rc %d", rc);
		FUNC11(intf);
		return rc;
	}

	FUNC8(dev->coredev, board_id);

	/* initialize urbs */
	for (i = 0; i < MAX_URBS; i++) {
		dev->surbs[i].dev = dev;
		FUNC12(&dev->surbs[i].urb);
	}

	FUNC6("smsusb_start_streaming(...).");
	rc = FUNC10(dev);
	if (rc < 0) {
		FUNC4("smsusb_start_streaming(...) failed");
		FUNC11(intf);
		return rc;
	}

	rc = FUNC9(dev->coredev);
	if (rc < 0) {
		FUNC4("smscore_start_device(...) failed");
		FUNC11(intf);
		return rc;
	}

	FUNC6("device %p created", dev);

	return rc;
}