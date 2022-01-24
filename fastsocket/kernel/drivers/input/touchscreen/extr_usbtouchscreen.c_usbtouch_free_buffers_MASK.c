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
struct usbtouch_usb {int /*<<< orphan*/  buffer; int /*<<< orphan*/  data_dma; int /*<<< orphan*/  data; TYPE_1__* type; } ;
struct usb_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  rept_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct usb_device *udev,
				  struct usbtouch_usb *usbtouch)
{
	FUNC1(udev, usbtouch->type->rept_size,
	                usbtouch->data, usbtouch->data_dma);
	FUNC0(usbtouch->buffer);
}