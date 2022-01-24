#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct v4l2_device {int /*<<< orphan*/  name; } ;
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct usb_device_id {int dummy; } ;
struct amradio_device {double curfreq; int stereo; struct amradio_device* buffer; TYPE_1__* videodev; int /*<<< orphan*/  lock; int /*<<< orphan*/  usbdev; scalar_t__ users; scalar_t__ removed; struct v4l2_device v4l2_dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  release; int /*<<< orphan*/ * ioctl_ops; int /*<<< orphan*/ * fops; struct v4l2_device* v4l2_dev; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUFFER_LENGTH ; 
 int EIO ; 
 int ENOMEM ; 
 double FREQ_MUL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  VFL_TYPE_RADIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC2 (struct amradio_device*) ; 
 struct amradio_device* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct amradio_device* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  radio_nr ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  usb_amradio_fops ; 
 int /*<<< orphan*/  usb_amradio_ioctl_ops ; 
 int /*<<< orphan*/  usb_amradio_video_device_release ; 
 int /*<<< orphan*/  FUNC7 (struct usb_interface*,struct amradio_device*) ; 
 int FUNC8 (int /*<<< orphan*/ *,struct v4l2_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct v4l2_device*) ; 
 TYPE_1__* FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int FUNC12 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,struct amradio_device*) ; 

__attribute__((used)) static int FUNC14(struct usb_interface *intf,
				const struct usb_device_id *id)
{
	struct amradio_device *radio;
	struct v4l2_device *v4l2_dev;
	int retval;

	radio = FUNC4(sizeof(struct amradio_device), GFP_KERNEL);

	if (!radio) {
		FUNC0(&intf->dev, "kmalloc for amradio_device failed\n");
		return -ENOMEM;
	}

	radio->buffer = FUNC3(BUFFER_LENGTH, GFP_KERNEL);

	if (!radio->buffer) {
		FUNC0(&intf->dev, "kmalloc for radio->buffer failed\n");
		FUNC2(radio);
		return -ENOMEM;
	}

	v4l2_dev = &radio->v4l2_dev;
	retval = FUNC8(&intf->dev, v4l2_dev);
	if (retval < 0) {
		FUNC0(&intf->dev, "couldn't register v4l2_device\n");
		FUNC2(radio->buffer);
		FUNC2(radio);
		return retval;
	}

	radio->videodev = FUNC10();

	if (!radio->videodev) {
		FUNC0(&intf->dev, "video_device_alloc failed\n");
		FUNC2(radio->buffer);
		FUNC2(radio);
		return -ENOMEM;
	}

	FUNC6(radio->videodev->name, v4l2_dev->name, sizeof(radio->videodev->name));
	radio->videodev->v4l2_dev = v4l2_dev;
	radio->videodev->fops = &usb_amradio_fops;
	radio->videodev->ioctl_ops = &usb_amradio_ioctl_ops;
	radio->videodev->release = usb_amradio_video_device_release;

	radio->removed = 0;
	radio->users = 0;
	radio->usbdev = FUNC1(intf);
	radio->curfreq = 95.16 * FREQ_MUL;
	radio->stereo = -1;

	FUNC5(&radio->lock);

	FUNC13(radio->videodev, radio);

	retval = FUNC12(radio->videodev,	VFL_TYPE_RADIO,	radio_nr);
	if (retval < 0) {
		FUNC0(&intf->dev, "could not register video device\n");
		FUNC11(radio->videodev);
		FUNC9(v4l2_dev);
		FUNC2(radio->buffer);
		FUNC2(radio);
		return -EIO;
	}

	FUNC7(intf, radio);
	return 0;
}