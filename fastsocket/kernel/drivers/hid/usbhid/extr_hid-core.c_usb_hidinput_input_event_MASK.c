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
struct usbhid_device {int /*<<< orphan*/  lock; int /*<<< orphan*/  ledcount; } ;
struct input_dev {int /*<<< orphan*/  dev; } ;
struct hid_field {int /*<<< orphan*/  report; } ;
struct hid_device {struct usbhid_device* driver_data; } ;

/* Variables and functions */
 unsigned int EV_FF ; 
 unsigned int EV_LED ; 
 int /*<<< orphan*/  USB_DIR_OUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct hid_field*,int,int) ; 
 int FUNC2 (struct hid_device*,unsigned int,unsigned int,struct hid_field**) ; 
 int FUNC3 (struct input_dev*,unsigned int,unsigned int,int) ; 
 struct hid_device* FUNC4 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct hid_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct input_dev *dev, unsigned int type, unsigned int code, int value)
{
	struct hid_device *hid = FUNC4(dev);
	struct usbhid_device *usbhid = hid->driver_data;
	struct hid_field *field;
	unsigned long flags;
	int offset;

	if (type == EV_FF)
		return FUNC3(dev, type, code, value);

	if (type != EV_LED)
		return -1;

	if ((offset = FUNC2(hid, type, code, &field)) == -1) {
		FUNC0(&dev->dev, "event field not found\n");
		return -1;
	}

	FUNC1(field, offset, value);
	if (value) {
		FUNC5(&usbhid->lock, flags);
		usbhid->ledcount++;
		FUNC6(&usbhid->lock, flags);
	} else {
		FUNC5(&usbhid->lock, flags);
		usbhid->ledcount--;
		FUNC6(&usbhid->lock, flags);
	}
	FUNC7(hid, field->report, USB_DIR_OUT);

	return 0;
}