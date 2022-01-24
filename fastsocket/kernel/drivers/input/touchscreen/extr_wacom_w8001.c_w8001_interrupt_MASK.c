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
struct w8001_coord {int /*<<< orphan*/  tsw; int /*<<< orphan*/  pen_pressure; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct w8001 {unsigned char* data; size_t idx; int /*<<< orphan*/  cmd_done; int /*<<< orphan*/  response_type; int /*<<< orphan*/  response; struct input_dev* dev; } ;
struct serio {int dummy; } ;
struct input_dev {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_PRESSURE ; 
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 unsigned char W8001_LEAD_BYTE ; 
 unsigned char W8001_LEAD_MASK ; 
 int /*<<< orphan*/  W8001_MAX_LENGTH ; 
 int /*<<< orphan*/  W8001_QUERY_PACKET ; 
 unsigned char W8001_TAB_BYTE ; 
 unsigned char W8001_TAB_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,struct w8001_coord*) ; 
 int /*<<< orphan*/  FUNC6 (char*,unsigned char) ; 
 struct w8001* FUNC7 (struct serio*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static irqreturn_t FUNC9(struct serio *serio,
				   unsigned char data, unsigned int flags)
{
	struct w8001 *w8001 = FUNC7(serio);
	struct input_dev *dev = w8001->dev;
	struct w8001_coord coord;
	unsigned char tmp;

	w8001->data[w8001->idx] = data;
	switch (w8001->idx++) {
	case 0:
		if ((data & W8001_LEAD_MASK) != W8001_LEAD_BYTE) {
			FUNC6("w8001: unsynchronized data: 0x%02x\n", data);
			w8001->idx = 0;
		}
		break;

	case 8:
		tmp = w8001->data[0] & W8001_TAB_MASK;
		if (FUNC8(tmp == W8001_TAB_BYTE))
			break;

		w8001->idx = 0;
		FUNC5(w8001->data, &coord);
		FUNC1(dev, ABS_X, coord.x);
		FUNC1(dev, ABS_Y, coord.y);
		FUNC1(dev, ABS_PRESSURE, coord.pen_pressure);
		FUNC2(dev, BTN_TOUCH, coord.tsw);
		FUNC3(dev);
		break;

	case 10:
		w8001->idx = 0;
		FUNC4(w8001->response, w8001->data, W8001_MAX_LENGTH);
		w8001->response_type = W8001_QUERY_PACKET;
		FUNC0(&w8001->cmd_done);
		break;
	}

	return IRQ_HANDLED;
}