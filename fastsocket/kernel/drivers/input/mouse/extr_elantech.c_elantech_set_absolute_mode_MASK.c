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
struct psmouse {struct elantech_data* private; } ;
struct elantech_data {int hw_version; int reg_10; int reg_11; int reg_21; } ;

/* Variables and functions */
 unsigned char ETP_R10_ABSOLUTE_MODE ; 
 int /*<<< orphan*/  ETP_READ_BACK_DELAY ; 
 int ETP_READ_BACK_TRIES ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (struct psmouse*,int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (struct psmouse*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(struct psmouse *psmouse)
{
	struct elantech_data *etd = psmouse->private;
	unsigned char val;
	int tries = ETP_READ_BACK_TRIES;
	int rc = 0;

	switch (etd->hw_version) {
	case 1:
		etd->reg_10 = 0x16;
		etd->reg_11 = 0x8f;
		if (FUNC2(psmouse, 0x10, etd->reg_10) ||
		    FUNC2(psmouse, 0x11, etd->reg_11)) {
			rc = -1;
		}
		break;

	case 2:
					/* Windows driver values */
		etd->reg_10 = 0x54;
		etd->reg_11 = 0x88;	/* 0x8a */
		etd->reg_21 = 0x60;	/* 0x00 */
		if (FUNC2(psmouse, 0x10, etd->reg_10) ||
		    FUNC2(psmouse, 0x11, etd->reg_11) ||
		    FUNC2(psmouse, 0x21, etd->reg_21)) {
			rc = -1;
			break;
		}
	}

	if (rc == 0) {
		/*
		 * Read back reg 0x10. For hardware version 1 we must make
		 * sure the absolute mode bit is set. For hardware version 2
		 * the touchpad is probably initalising and not ready until
		 * we read back the value we just wrote.
		 */
		do {
			rc = FUNC1(psmouse, 0x10, &val);
			if (rc == 0)
				break;
			tries--;
			FUNC0("elantech.c: retrying read (%d).\n",
					tries);
			FUNC3(ETP_READ_BACK_DELAY);
		} while (tries > 0);

		if (rc) {
			FUNC4("elantech.c: failed to read back register 0x10.\n");
		} else if (etd->hw_version == 1 &&
			   !(val & ETP_R10_ABSOLUTE_MODE)) {
			FUNC4("elantech.c: touchpad refuses "
				"to switch to absolute mode.\n");
			rc = -1;
		}
	}

	if (rc)
		FUNC4("elantech.c: failed to initialise registers.\n");

	return rc;
}