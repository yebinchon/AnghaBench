#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u8 ;
typedef  int u16 ;
struct usb_device {int dummy; } ;

/* Variables and functions */
 int OPERA_READ_MSG ; 
 int OPERA_TUNER_REQ ; 
 int OPERA_WRITE_MSG ; 
 int USB_DIR_IN ; 
 int USB_DIR_OUT ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (int*,int*,int) ; 
 int FUNC1 (struct usb_device*,unsigned int,int,int,int,int,int*,int,int) ; 
 unsigned int FUNC2 (struct usb_device*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct usb_device *dev, u8 request, u16 value,
			    u8 * data, u16 len, int flags)
{
	int ret;
	u8 r;
	u8 u8buf[len];

	unsigned int pipe = (flags == OPERA_READ_MSG) ?
		FUNC2(dev,0) : FUNC3(dev, 0);
	u8 request_type = (flags == OPERA_READ_MSG) ? USB_DIR_IN : USB_DIR_OUT;

	if (flags == OPERA_WRITE_MSG)
		FUNC0(u8buf, data, len);
	ret =
		FUNC1(dev, pipe, request, request_type | USB_TYPE_VENDOR,
			value, 0x0, u8buf, len, 2000);

	if (request == OPERA_TUNER_REQ) {
		if (FUNC1(dev, FUNC2(dev, 0),
				OPERA_TUNER_REQ, USB_DIR_IN | USB_TYPE_VENDOR,
				0x01, 0x0, &r, 1, 2000)<1 || r!=0x08)
					return 0;
	}
	if (flags == OPERA_READ_MSG)
		FUNC0(data, u8buf, len);
	return ret;
}