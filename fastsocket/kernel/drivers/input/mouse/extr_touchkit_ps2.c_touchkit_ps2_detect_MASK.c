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
struct psmouse {char* vendor; char* name; int pktsize; int /*<<< orphan*/  protocol_handler; int /*<<< orphan*/  ps2dev; struct input_dev* dev; } ;
struct input_dev {int* evbit; int /*<<< orphan*/  keybit; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int ENODEV ; 
 int /*<<< orphan*/  EV_ABS ; 
 int /*<<< orphan*/  EV_KEY ; 
 unsigned char TOUCHKIT_CMD ; 
 unsigned char TOUCHKIT_CMD_ACTIVE ; 
 unsigned char TOUCHKIT_CMD_LENGTH ; 
 int /*<<< orphan*/  TOUCHKIT_MAX_XC ; 
 int /*<<< orphan*/  TOUCHKIT_MAX_YC ; 
 int FUNC1 (int,int,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  touchkit_ps2_process_byte ; 

int FUNC5(struct psmouse *psmouse, bool set_properties)
{
	struct input_dev *dev = psmouse->dev;
	unsigned char param[3];
	int command;

	param[0] = TOUCHKIT_CMD_LENGTH;
	param[1] = TOUCHKIT_CMD_ACTIVE;
	command = FUNC1(2, 3, TOUCHKIT_CMD);

	if (FUNC4(&psmouse->ps2dev, param, command))
		return -ENODEV;

	if (param[0] != TOUCHKIT_CMD || param[1] != 0x01 ||
	    param[2] != TOUCHKIT_CMD_ACTIVE)
		return -ENODEV;

	if (set_properties) {
		dev->evbit[0] = FUNC0(EV_KEY) | FUNC0(EV_ABS);
		FUNC2(BTN_TOUCH, dev->keybit);
		FUNC3(dev, ABS_X, 0, TOUCHKIT_MAX_XC, 0, 0);
		FUNC3(dev, ABS_Y, 0, TOUCHKIT_MAX_YC, 0, 0);

		psmouse->vendor = "eGalax";
		psmouse->name = "Touchscreen";
		psmouse->protocol_handler = touchkit_ps2_process_byte;
		psmouse->pktsize = 5;
	}

	return 0;
}