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
struct sd {int /*<<< orphan*/  brightness; } ;
struct gspca_dev {struct usb_device* dev; } ;
typedef  int /*<<< orphan*/  __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usb_device*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct gspca_dev *gspca_dev)
{
	struct sd *sd = (struct sd *) gspca_dev;
	struct usb_device *dev = gspca_dev->dev;
	__u8 value;

	value = sd->brightness;

	/* offsets for white balance */
	FUNC0(dev, 0x8611, value);		/* R */
	FUNC0(dev, 0x8612, value);		/* Gr */
	FUNC0(dev, 0x8613, value);		/* B */
	FUNC0(dev, 0x8614, value);		/* Gb */
}