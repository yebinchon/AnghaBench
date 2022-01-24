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
struct psmouse {unsigned char* packet; struct input_dev* dev; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_PRESSURE ; 
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  BTN_LEFT ; 
 int /*<<< orphan*/  BTN_RIGHT ; 
 int /*<<< orphan*/  BTN_TOOL_FINGER ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int /*<<< orphan*/  FUNC0 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*) ; 

__attribute__((used)) static void FUNC3(struct psmouse *psmouse)
{
	unsigned char *packet = psmouse->packet;
	struct input_dev *dev = psmouse->dev;
	int x, y, z;
	int left, right;

	left = packet[4] & 0x01;
	right = packet[4] & 0x02;

	x = ((packet[1] & 0x7f) << 4) | ((packet[3] & 0x30) >> 2) |
	    ((packet[0] & 0x30) >> 4);
	y = ((packet[2] & 0x7f) << 4) | (packet[3] & 0x0f);
	z = packet[5] & 0x7f;

	if (z >= 64)
		FUNC1(dev, BTN_TOUCH, 1);
	else
		FUNC1(dev, BTN_TOUCH, 0);

	if (z > 0) {
		FUNC0(dev, ABS_X, x);
		FUNC0(dev, ABS_Y, y);
	}
	FUNC0(dev, ABS_PRESSURE, z);

	FUNC1(dev, BTN_TOOL_FINGER, z > 0);
	FUNC1(dev, BTN_LEFT, left);
	FUNC1(dev, BTN_RIGHT, right);

	FUNC2(dev);
}