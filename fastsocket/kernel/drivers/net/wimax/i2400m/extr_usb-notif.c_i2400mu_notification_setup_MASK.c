#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct usb_endpoint_descriptor {int /*<<< orphan*/  bInterval; int /*<<< orphan*/  bEndpointAddress; } ;
struct i2400mu {int /*<<< orphan*/  notif_urb; int /*<<< orphan*/  usb_dev; TYPE_1__* usb_iface; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  I2400MU_EP_NOTIFICATION ; 
 int /*<<< orphan*/  I2400MU_MAX_NOTIFICATION_LEN ; 
 int /*<<< orphan*/  FUNC0 (int,struct device*,char*,struct i2400mu*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,struct device*,char*,struct i2400mu*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int /*<<< orphan*/  i2400mu_notification_cb ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct i2400mu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct usb_endpoint_descriptor* FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int) ; 

int FUNC11(struct i2400mu *i2400mu)
{
	struct device *dev = &i2400mu->usb_iface->dev;
	int usb_pipe, ret = 0;
	struct usb_endpoint_descriptor *epd;
	char *buf;

	FUNC1(4, dev, "(i2400m %p)\n", i2400mu);
	buf = FUNC4(I2400MU_MAX_NOTIFICATION_LEN, GFP_KERNEL | GFP_DMA);
	if (buf == NULL) {
		FUNC2(dev, "notification: buffer allocation failed\n");
		ret = -ENOMEM;
		goto error_buf_alloc;
	}

	i2400mu->notif_urb = FUNC5(0, GFP_KERNEL);
	if (!i2400mu->notif_urb) {
		ret = -ENOMEM;
		FUNC2(dev, "notification: cannot allocate URB\n");
		goto error_alloc_urb;
	}
	epd = FUNC8(i2400mu->usb_iface, I2400MU_EP_NOTIFICATION);
	usb_pipe = FUNC9(i2400mu->usb_dev, epd->bEndpointAddress);
	FUNC6(i2400mu->notif_urb, i2400mu->usb_dev, usb_pipe,
			 buf, I2400MU_MAX_NOTIFICATION_LEN,
			 i2400mu_notification_cb, i2400mu, epd->bInterval);
	ret = FUNC10(i2400mu->notif_urb, GFP_KERNEL);
	if (ret != 0) {
		FUNC2(dev, "notification: cannot submit URB: %d\n", ret);
		goto error_submit;
	}
	FUNC0(4, dev, "(i2400m %p) = %d\n", i2400mu, ret);
	return ret;

error_submit:
	FUNC7(i2400mu->notif_urb);
error_alloc_urb:
	FUNC3(buf);
error_buf_alloc:
	FUNC0(4, dev, "(i2400m %p) = %d\n", i2400mu, ret);
	return ret;
}