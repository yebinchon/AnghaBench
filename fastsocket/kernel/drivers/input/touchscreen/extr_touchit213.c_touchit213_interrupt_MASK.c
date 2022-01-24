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
struct touchit213 {unsigned char* data; size_t idx; struct input_dev* dev; } ;
struct serio {int dummy; } ;
struct input_dev {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int T213_FORMAT_STATUS_BYTE ; 
 int T213_FORMAT_STATUS_MASK ; 
 int T213_FORMAT_TOUCH_BIT ; 
 int /*<<< orphan*/  FUNC0 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned char) ; 
 struct touchit213* FUNC4 (struct serio*) ; 

__attribute__((used)) static irqreturn_t FUNC5(struct serio *serio,
		unsigned char data, unsigned int flags)
{
	struct touchit213 *touchit213 = FUNC4(serio);
	struct input_dev *dev = touchit213->dev;

	touchit213->data[touchit213->idx] = data;

	switch (touchit213->idx++) {
	case 0:
		if ((touchit213->data[0] & T213_FORMAT_STATUS_MASK) !=
				T213_FORMAT_STATUS_BYTE) {
			FUNC3("unsynchronized data: 0x%02x\n", data);
			touchit213->idx = 0;
		}
		break;

	case 4:
		touchit213->idx = 0;
		FUNC0(dev, ABS_X,
			(touchit213->data[1] << 7) | touchit213->data[2]);
		FUNC0(dev, ABS_Y,
			(touchit213->data[3] << 7) | touchit213->data[4]);
		FUNC1(dev, BTN_TOUCH,
			touchit213->data[0] & T213_FORMAT_TOUCH_BIT);
		FUNC2(dev);
		break;
	}

	return IRQ_HANDLED;
}