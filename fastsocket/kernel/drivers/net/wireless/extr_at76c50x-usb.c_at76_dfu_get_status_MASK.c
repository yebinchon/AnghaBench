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
struct usb_device {int dummy; } ;
struct dfu_status {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DFU_GETSTATUS ; 
 int /*<<< orphan*/  USB_CTRL_GET_TIMEOUT ; 
 int USB_DIR_IN ; 
 int USB_RECIP_INTERFACE ; 
 int USB_TYPE_CLASS ; 
 int FUNC0 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dfu_status*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct usb_device *udev,
			       struct dfu_status *status)
{
	int ret;

	ret = FUNC0(udev, FUNC1(udev, 0), DFU_GETSTATUS,
			      USB_TYPE_CLASS | USB_DIR_IN | USB_RECIP_INTERFACE,
			      0, 0, status, sizeof(struct dfu_status),
			      USB_CTRL_GET_TIMEOUT);
	return ret;
}