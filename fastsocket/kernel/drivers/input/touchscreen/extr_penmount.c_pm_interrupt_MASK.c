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
struct pm {unsigned char* data; size_t idx; struct input_dev* dev; } ;
struct input_dev {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 size_t PM_MAX_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*) ; 
 struct pm* FUNC3 (struct serio*) ; 

__attribute__((used)) static irqreturn_t FUNC4(struct serio *serio,
		unsigned char data, unsigned int flags)
{
	struct pm *pm = FUNC3(serio);
	struct input_dev *dev = pm->dev;

	pm->data[pm->idx] = data;

	if (pm->data[0] & 0x80) {
		if (PM_MAX_LENGTH == ++pm->idx) {
			FUNC0(dev, ABS_X, pm->data[2] * 128 + pm->data[1]);
			FUNC0(dev, ABS_Y, pm->data[4] * 128 + pm->data[3]);
			FUNC1(dev, BTN_TOUCH, !!(pm->data[0] & 0x40));
			FUNC2(dev);
			pm->idx = 0;
		}
	}

	return IRQ_HANDLED;
}