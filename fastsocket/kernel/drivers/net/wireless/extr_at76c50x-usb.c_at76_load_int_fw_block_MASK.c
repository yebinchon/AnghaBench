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

/* Variables and functions */
 int /*<<< orphan*/  DFU_DNLOAD ; 
 int /*<<< orphan*/  USB_CTRL_GET_TIMEOUT ; 
 int USB_DIR_OUT ; 
 int USB_RECIP_INTERFACE ; 
 int USB_TYPE_CLASS ; 
 int FUNC0 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct usb_device *udev, int blockno,
				  void *block, int size)
{
	return FUNC0(udev, FUNC1(udev, 0), DFU_DNLOAD,
			       USB_TYPE_CLASS | USB_DIR_OUT |
			       USB_RECIP_INTERFACE, blockno, 0, block, size,
			       USB_CTRL_GET_TIMEOUT);
}