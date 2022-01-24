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
struct usb_device {int dummy; } ;
struct stir_cb {TYPE_1__* netdev; struct usb_device* usbdev; } ;
typedef  int /*<<< orphan*/  __u8 ;
typedef  int /*<<< orphan*/  __u16 ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL_TIMEOUT ; 
 int /*<<< orphan*/  REQ_WRITE_SINGLE ; 
 int USB_DIR_OUT ; 
 int USB_RECIP_DEVICE ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct stir_cb *stir, __u16 reg, __u8 value)
{
	struct usb_device *dev = stir->usbdev;

	FUNC0("%s: write reg %d = 0x%x\n",
		 stir->netdev->name, reg, value);
	return FUNC1(dev, FUNC2(dev, 0),
			       REQ_WRITE_SINGLE,
			       USB_DIR_OUT|USB_TYPE_VENDOR|USB_RECIP_DEVICE,
			       value, reg, NULL, 0,
			       CTRL_TIMEOUT);
}