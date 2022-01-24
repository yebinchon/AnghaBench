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
struct ps2dev {int dummy; } ;
struct psmouse {char* vendor; char* name; struct ps2dev ps2dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETP_FW_VERSION_QUERY ; 
 int /*<<< orphan*/  PSMOUSE_CMD_DISABLE ; 
 int /*<<< orphan*/  PSMOUSE_CMD_GETINFO ; 
 int /*<<< orphan*/  PSMOUSE_CMD_RESET_DIS ; 
 int /*<<< orphan*/  PSMOUSE_CMD_SETSCALE11 ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (struct ps2dev*,unsigned char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct psmouse*,int /*<<< orphan*/ ,unsigned char*) ; 

int FUNC3(struct psmouse *psmouse, bool set_properties)
{
	struct ps2dev *ps2dev = &psmouse->ps2dev;
	unsigned char param[3];

	FUNC1(&psmouse->ps2dev, NULL, PSMOUSE_CMD_RESET_DIS);

	if (FUNC1(ps2dev,  NULL, PSMOUSE_CMD_DISABLE) ||
	    FUNC1(ps2dev,  NULL, PSMOUSE_CMD_SETSCALE11) ||
	    FUNC1(ps2dev,  NULL, PSMOUSE_CMD_SETSCALE11) ||
	    FUNC1(ps2dev,  NULL, PSMOUSE_CMD_SETSCALE11) ||
	    FUNC1(ps2dev, param, PSMOUSE_CMD_GETINFO)) {
		FUNC0("elantech.c: sending Elantech magic knock failed.\n");
		return -1;
	}

	/*
	 * Report this in case there are Elantech models that use a different
	 * set of magic numbers
	 */
	if (param[0] != 0x3c || param[1] != 0x03 || param[2] != 0xc8) {
		FUNC0("elantech.c: "
			 "unexpected magic knock result 0x%02x, 0x%02x, 0x%02x.\n",
			 param[0], param[1], param[2]);
		return -1;
	}

	/*
	 * Query touchpad's firmware version and see if it reports known
	 * value to avoid mis-detection. Logitech mice are known to respond
	 * to Elantech magic knock and there might be more.
	 */
	if (FUNC2(psmouse, ETP_FW_VERSION_QUERY, param)) {
		FUNC0("elantech.c: failed to query firmware version.\n");
		return -1;
	}

	FUNC0("elantech.c: Elantech version query result 0x%02x, 0x%02x, 0x%02x.\n",
		 param[0], param[1], param[2]);

	if (param[0] == 0 || param[1] != 0) {
		FUNC0("elantech.c: Probably not a real Elantech touchpad. Aborting.\n");
		return -1;
	}

	if (set_properties) {
		psmouse->vendor = "Elantech";
		psmouse->name = "Touchpad";
	}

	return 0;
}