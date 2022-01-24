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
struct usb_device {int dummy; } ;
struct rt2x00_dev {int /*<<< orphan*/  flags; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVICE_STATE_PRESENT ; 
 int ENODEV ; 
 unsigned int REGISTER_BUSY_COUNT ; 
 int /*<<< orphan*/  const USB_VENDOR_REQUEST_IN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*,char*,int /*<<< orphan*/  const,int /*<<< orphan*/  const,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct usb_device* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct usb_device*,unsigned int,int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/  const,void*,int /*<<< orphan*/  const,int const) ; 
 unsigned int FUNC5 (struct usb_device*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (struct usb_device*,int /*<<< orphan*/ ) ; 

int FUNC7(struct rt2x00_dev *rt2x00dev,
			     const u8 request, const u8 requesttype,
			     const u16 offset, const u16 value,
			     void *buffer, const u16 buffer_length,
			     const int timeout)
{
	struct usb_device *usb_dev = FUNC3(rt2x00dev->dev);
	int status;
	unsigned int i;
	unsigned int pipe =
	    (requesttype == USB_VENDOR_REQUEST_IN) ?
	    FUNC5(usb_dev, 0) : FUNC6(usb_dev, 0);

	if (!FUNC2(DEVICE_STATE_PRESENT, &rt2x00dev->flags))
		return -ENODEV;

	for (i = 0; i < REGISTER_BUSY_COUNT; i++) {
		status = FUNC4(usb_dev, pipe, request, requesttype,
					 value, offset, buffer, buffer_length,
					 timeout);
		if (status >= 0)
			return 0;

		/*
		 * Check for errors
		 * -ENODEV: Device has disappeared, no point continuing.
		 * All other errors: Try again.
		 */
		else if (status == -ENODEV) {
			FUNC0(DEVICE_STATE_PRESENT, &rt2x00dev->flags);
			break;
		}
	}

	FUNC1(rt2x00dev,
		   "Vendor Request 0x%02x failed for offset 0x%04x with error %d\n",
		   request, offset, status);

	return status;
}