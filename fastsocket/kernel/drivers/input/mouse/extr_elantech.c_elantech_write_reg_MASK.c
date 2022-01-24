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
struct psmouse {int /*<<< orphan*/  ps2dev; struct elantech_data* private; } ;
struct elantech_data {int hw_version; } ;

/* Variables and functions */
 unsigned char ETP_PS2_CUSTOM_COMMAND ; 
 unsigned char ETP_REGISTER_WRITE ; 
 unsigned char PSMOUSE_CMD_SETSCALE11 ; 
 int /*<<< orphan*/  FUNC0 (struct psmouse*,int /*<<< orphan*/ *,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned char,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (struct psmouse*,unsigned char) ; 

__attribute__((used)) static int FUNC4(struct psmouse *psmouse, unsigned char reg,
				unsigned char val)
{
	struct elantech_data *etd = psmouse->private;
	int rc = 0;

	if (reg < 0x10 || reg > 0x26)
		return -1;

	if (reg > 0x11 && reg < 0x20)
		return -1;

	switch (etd->hw_version) {
	case 1:
		if (FUNC3(psmouse, ETP_REGISTER_WRITE) ||
		    FUNC3(psmouse, reg) ||
		    FUNC3(psmouse, val) ||
		    FUNC2(&psmouse->ps2dev, NULL, PSMOUSE_CMD_SETSCALE11)) {
			rc = -1;
		}
		break;

	case 2:
		if (FUNC0(psmouse, NULL, ETP_PS2_CUSTOM_COMMAND) ||
		    FUNC0(psmouse, NULL, ETP_REGISTER_WRITE) ||
		    FUNC0(psmouse, NULL, ETP_PS2_CUSTOM_COMMAND) ||
		    FUNC0(psmouse, NULL, reg) ||
		    FUNC0(psmouse, NULL, ETP_PS2_CUSTOM_COMMAND) ||
		    FUNC0(psmouse, NULL, val) ||
		    FUNC0(psmouse, NULL, PSMOUSE_CMD_SETSCALE11)) {
			rc = -1;
		}
		break;
	}

	if (rc)
		FUNC1("elantech.c: failed to write register 0x%02x with value 0x%02x.\n",
			reg, val);

	return rc;
}