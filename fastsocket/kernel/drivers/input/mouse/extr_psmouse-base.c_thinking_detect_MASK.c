#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ps2dev {int dummy; } ;
struct psmouse {char* vendor; char* name; TYPE_1__* dev; struct ps2dev ps2dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  keybit; } ;

/* Variables and functions */
 int FUNC0 (unsigned char const*) ; 
 int /*<<< orphan*/  BTN_EXTRA ; 
 int /*<<< orphan*/  PSMOUSE_CMD_GETID ; 
 int /*<<< orphan*/  PSMOUSE_CMD_SETRATE ; 
 int /*<<< orphan*/  PSMOUSE_CMD_SETRES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ps2dev*,unsigned char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct psmouse *psmouse, bool set_properties)
{
	struct ps2dev *ps2dev = &psmouse->ps2dev;
	unsigned char param[2];
	static const unsigned char seq[] = { 20, 60, 40, 20, 20, 60, 40, 20, 20 };
	int i;

	param[0] = 10;
	FUNC2(ps2dev, param, PSMOUSE_CMD_SETRATE);
	param[0] = 0;
	FUNC2(ps2dev, param, PSMOUSE_CMD_SETRES);
	for (i = 0; i < FUNC0(seq); i++) {
		param[0] = seq[i];
		FUNC2(ps2dev, param, PSMOUSE_CMD_SETRATE);
	}
	FUNC2(ps2dev, param, PSMOUSE_CMD_GETID);

	if (param[0] != 2)
		return -1;

	if (set_properties) {
		FUNC1(BTN_EXTRA, psmouse->dev->keybit);

		psmouse->vendor = "Kensington";
		psmouse->name = "ThinkingMouse";
	}

	return 0;
}