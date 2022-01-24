#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct v4l2_device {int /*<<< orphan*/  name; } ;
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  release; int /*<<< orphan*/ * ioctl_ops; int /*<<< orphan*/ * fops; struct v4l2_device* v4l2_dev; int /*<<< orphan*/  name; } ;
struct dsbr100_device {int curfreq; struct dsbr100_device* transfer_buffer; TYPE_1__ videodev; int /*<<< orphan*/  status; int /*<<< orphan*/  usbdev; scalar_t__ removed; int /*<<< orphan*/  lock; struct v4l2_device v4l2_dev; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int FREQ_MIN ; 
 int FREQ_MUL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  STOPPED ; 
 int /*<<< orphan*/  TB_LEN ; 
 int /*<<< orphan*/  VFL_TYPE_RADIO ; 
 int /*<<< orphan*/  FUNC0 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC1 (struct dsbr100_device*) ; 
 struct dsbr100_device* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dsbr100_device* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  radio_nr ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  usb_dsbr100_fops ; 
 int /*<<< orphan*/  usb_dsbr100_ioctl_ops ; 
 int /*<<< orphan*/  usb_dsbr100_video_device_release ; 
 int /*<<< orphan*/  FUNC6 (struct usb_interface*,struct dsbr100_device*) ; 
 int FUNC7 (int /*<<< orphan*/ *,struct v4l2_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct v4l2_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct v4l2_device*,char*) ; 
 int FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,struct dsbr100_device*) ; 

__attribute__((used)) static int FUNC12(struct usb_interface *intf,
				const struct usb_device_id *id)
{
	struct dsbr100_device *radio;
	struct v4l2_device *v4l2_dev;
	int retval;

	radio = FUNC3(sizeof(struct dsbr100_device), GFP_KERNEL);

	if (!radio)
		return -ENOMEM;

	radio->transfer_buffer = FUNC2(TB_LEN, GFP_KERNEL);

	if (!(radio->transfer_buffer)) {
		FUNC1(radio);
		return -ENOMEM;
	}

	v4l2_dev = &radio->v4l2_dev;

	retval = FUNC7(&intf->dev, v4l2_dev);
	if (retval < 0) {
		FUNC9(v4l2_dev, "couldn't register v4l2_device\n");
		FUNC1(radio->transfer_buffer);
		FUNC1(radio);
		return retval;
	}

	FUNC5(radio->videodev.name, v4l2_dev->name, sizeof(radio->videodev.name));
	radio->videodev.v4l2_dev = v4l2_dev;
	radio->videodev.fops = &usb_dsbr100_fops;
	radio->videodev.ioctl_ops = &usb_dsbr100_ioctl_ops;
	radio->videodev.release = usb_dsbr100_video_device_release;

	FUNC4(&radio->lock);

	radio->removed = 0;
	radio->usbdev = FUNC0(intf);
	radio->curfreq = FREQ_MIN * FREQ_MUL;
	radio->status = STOPPED;

	FUNC11(&radio->videodev, radio);

	retval = FUNC10(&radio->videodev, VFL_TYPE_RADIO, radio_nr);
	if (retval < 0) {
		FUNC9(v4l2_dev, "couldn't register video device\n");
		FUNC8(v4l2_dev);
		FUNC1(radio->transfer_buffer);
		FUNC1(radio);
		return -EIO;
	}
	FUNC6(intf, radio);
	return 0;
}