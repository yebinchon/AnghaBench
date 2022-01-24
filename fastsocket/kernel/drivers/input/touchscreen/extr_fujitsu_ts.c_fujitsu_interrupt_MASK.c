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
struct serio {int dummy; } ;
struct input_dev {int dummy; } ;
struct fujitsu {scalar_t__ idx; unsigned char* data; struct input_dev* dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 scalar_t__ FUJITSU_LENGTH ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*) ; 
 struct fujitsu* FUNC3 (struct serio*) ; 

__attribute__((used)) static irqreturn_t FUNC4(struct serio *serio,
				     unsigned char data, unsigned int flags)
{
	struct fujitsu *fujitsu = FUNC3(serio);
	struct input_dev *dev = fujitsu->dev;

	if (fujitsu->idx == 0) {
		/* resync skip until start of frame */
		if ((data & 0xf0) != 0x80)
			return IRQ_HANDLED;
	} else {
		/* resync skip garbage */
		if (data & 0x80) {
			fujitsu->idx = 0;
			return IRQ_HANDLED;
		}
	}

	fujitsu->data[fujitsu->idx++] = data;
	if (fujitsu->idx == FUJITSU_LENGTH) {
		FUNC0(dev, ABS_X,
				 (fujitsu->data[2] << 7) | fujitsu->data[1]);
		FUNC0(dev, ABS_Y,
				 (fujitsu->data[4] << 7) | fujitsu->data[3]);
		FUNC1(dev, BTN_TOUCH,
				 (fujitsu->data[0] & 0x03) != 2);
		FUNC2(dev);
		fujitsu->idx = 0;
	}

	return IRQ_HANDLED;
}