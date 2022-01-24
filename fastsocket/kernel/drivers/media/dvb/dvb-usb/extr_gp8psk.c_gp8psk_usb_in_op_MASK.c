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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct dvb_usb_device {int /*<<< orphan*/  usb_mutex; int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int EIO ; 
 int USB_DIR_IN ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/  (*) (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ )) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 

int FUNC8(struct dvb_usb_device *d, u8 req, u16 value, u16 index, u8 *b, int blen)
{
	int ret = 0,try = 0;

	if ((ret = FUNC3(&d->usb_mutex)))
		return ret;

	while (ret >= 0 && ret != blen && try < 3) {
		ret = FUNC5(d->udev,
			FUNC6(d->udev,0),
			req,
			USB_TYPE_VENDOR | USB_DIR_IN,
			value,index,b,blen,
			2000);
		FUNC0("reading number %d (ret: %d)\n",try,ret);
		try++;
	}

	if (ret < 0 || ret != blen) {
		FUNC7("usb in %d operation failed.", req);
		ret = -EIO;
	} else
		ret = 0;

	FUNC1("in: req. %x, val: %x, ind: %x, buffer: ",req,value,index);
	FUNC2(b,blen,deb_xfer);

	FUNC4(&d->usb_mutex);

	return ret;
}