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
struct usbnet {int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DM_WRITE_REG ; 
 int /*<<< orphan*/  USB_CTRL_SET_TIMEOUT ; 
 int USB_DIR_OUT ; 
 int USB_RECIP_DEVICE ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (struct usbnet*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct usbnet *dev, u8 reg, u8 value)
{
	FUNC0(dev, "dm_write_reg() reg=0x%02x, value=0x%02x", reg, value);
	return FUNC1(dev->udev,
			       FUNC2(dev->udev, 0),
			       DM_WRITE_REG,
			       USB_DIR_OUT | USB_TYPE_VENDOR |USB_RECIP_DEVICE,
			       value, reg, NULL, 0, USB_CTRL_SET_TIMEOUT);
}