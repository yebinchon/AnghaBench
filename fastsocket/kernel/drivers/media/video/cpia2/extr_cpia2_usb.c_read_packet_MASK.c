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

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  HZ ; 
 int USB_DIR_IN ; 
 int USB_RECIP_DEVICE ; 
 int USB_TYPE_VENDOR ; 
 int FUNC0 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct usb_device *udev,
		       u8 request, u8 * registers, u16 start, size_t size)
{
	if (!registers || size <= 0)
		return -EINVAL;

	return FUNC0(udev,
			       FUNC1(udev, 0),
			       request,
			       USB_DIR_IN|USB_TYPE_VENDOR|USB_RECIP_DEVICE,
			       start,	/* value */
			       0,	/* index */
			       registers,	/* buffer */
			       size,
			       HZ);
}