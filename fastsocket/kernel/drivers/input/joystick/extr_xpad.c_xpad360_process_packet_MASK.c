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
typedef  int /*<<< orphan*/  u16 ;
struct usb_xpad {scalar_t__ dpad_mapping; struct input_dev* dev; } ;
struct input_dev {int dummy; } ;
typedef  unsigned char __s16 ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_HAT0X ; 
 int /*<<< orphan*/  ABS_HAT0Y ; 
 int /*<<< orphan*/  ABS_RX ; 
 int /*<<< orphan*/  ABS_RY ; 
 int /*<<< orphan*/  ABS_RZ ; 
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  ABS_Z ; 
 int /*<<< orphan*/  BTN_0 ; 
 int /*<<< orphan*/  BTN_1 ; 
 int /*<<< orphan*/  BTN_A ; 
 int /*<<< orphan*/  BTN_B ; 
 int /*<<< orphan*/  BTN_BACK ; 
 int /*<<< orphan*/  BTN_LEFT ; 
 int /*<<< orphan*/  BTN_MODE ; 
 int /*<<< orphan*/  BTN_RIGHT ; 
 int /*<<< orphan*/  BTN_START ; 
 int /*<<< orphan*/  BTN_THUMBL ; 
 int /*<<< orphan*/  BTN_THUMBR ; 
 int /*<<< orphan*/  BTN_TL ; 
 int /*<<< orphan*/  BTN_TR ; 
 int /*<<< orphan*/  BTN_X ; 
 int /*<<< orphan*/  BTN_Y ; 
 scalar_t__ MAP_DPAD_TO_AXES ; 
 scalar_t__ MAP_DPAD_TO_BUTTONS ; 
 int /*<<< orphan*/  FUNC0 (struct input_dev*,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct usb_xpad *xpad,
				   u16 cmd, unsigned char *data)
{
	struct input_dev *dev = xpad->dev;

	/* digital pad */
	if (xpad->dpad_mapping == MAP_DPAD_TO_AXES) {
		FUNC0(dev, ABS_HAT0X,
				 !!(data[2] & 0x08) - !!(data[2] & 0x04));
		FUNC0(dev, ABS_HAT0Y,
				 !!(data[2] & 0x02) - !!(data[2] & 0x01));
	} else if (xpad->dpad_mapping == MAP_DPAD_TO_BUTTONS) {
		/* dpad as buttons (right, left, down, up) */
		FUNC1(dev, BTN_LEFT, data[2] & 0x04);
		FUNC1(dev, BTN_RIGHT, data[2] & 0x08);
		FUNC1(dev, BTN_0, data[2] & 0x01);	/* up */
		FUNC1(dev, BTN_1, data[2] & 0x02);	/* down */
	}

	/* start/back buttons */
	FUNC1(dev, BTN_START,  data[2] & 0x10);
	FUNC1(dev, BTN_BACK,   data[2] & 0x20);

	/* stick press left/right */
	FUNC1(dev, BTN_THUMBL, data[2] & 0x40);
	FUNC1(dev, BTN_THUMBR, data[2] & 0x80);

	/* buttons A,B,X,Y,TL,TR and MODE */
	FUNC1(dev, BTN_A,	data[3] & 0x10);
	FUNC1(dev, BTN_B,	data[3] & 0x20);
	FUNC1(dev, BTN_X,	data[3] & 0x40);
	FUNC1(dev, BTN_Y,	data[3] & 0x80);
	FUNC1(dev, BTN_TL,	data[3] & 0x01);
	FUNC1(dev, BTN_TR,	data[3] & 0x02);
	FUNC1(dev, BTN_MODE,	data[3] & 0x04);

	/* left stick */
	FUNC0(dev, ABS_X,
			 (__s16) FUNC3((__le16 *)(data + 6)));
	FUNC0(dev, ABS_Y,
			 ~(__s16) FUNC3((__le16 *)(data + 8)));

	/* right stick */
	FUNC0(dev, ABS_RX,
			 (__s16) FUNC3((__le16 *)(data + 10)));
	FUNC0(dev, ABS_RY,
			 ~(__s16) FUNC3((__le16 *)(data + 12)));

	/* triggers left/right */
	FUNC0(dev, ABS_Z, data[4]);
	FUNC0(dev, ABS_RZ, data[5]);

	FUNC2(dev);
}