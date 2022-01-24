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
struct ps2dev {TYPE_1__* serio; } ;
struct psmouse {struct ps2dev ps2dev; struct fsp_data* private; } ;
struct fsp_data {int buttons; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int FSP_BIT_EN_AUTO_MSID8 ; 
 int FSP_BIT_EN_MSID6 ; 
 int FSP_BIT_EN_MSID7 ; 
 int FSP_BIT_EN_MSID8 ; 
 int FSP_BIT_EN_PKT_G0 ; 
 int /*<<< orphan*/  FSP_REG_SYSCTL5 ; 
 int /*<<< orphan*/  PSMOUSE_CMD_GETID ; 
 int /*<<< orphan*/  PSMOUSE_CMD_SETRATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct psmouse*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct psmouse*,int) ; 
 scalar_t__ FUNC4 (struct psmouse*,int) ; 
 scalar_t__ FUNC5 (struct psmouse*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC6 (struct psmouse*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ps2dev*,unsigned char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct psmouse *psmouse)
{
	struct fsp_data *pad = psmouse->private;
	struct ps2dev *ps2dev = &psmouse->ps2dev;
	unsigned char param[2];
	int val;

	/*
	 * Standard procedure to enter FSP Intellimouse mode
	 * (scrolling wheel, 4th and 5th buttons)
	 */
	param[0] = 200;
	FUNC7(ps2dev, param, PSMOUSE_CMD_SETRATE);
	param[0] = 200;
	FUNC7(ps2dev, param, PSMOUSE_CMD_SETRATE);
	param[0] =  80;
	FUNC7(ps2dev, param, PSMOUSE_CMD_SETRATE);

	FUNC7(ps2dev, param, PSMOUSE_CMD_GETID);
	if (param[0] != 0x04) {
		FUNC0(&psmouse->ps2dev.serio->dev,
			"Unable to enable 4 bytes packet format.\n");
		return -EIO;
	}

	if (FUNC5(psmouse, FSP_REG_SYSCTL5, &val)) {
		FUNC0(&psmouse->ps2dev.serio->dev,
			"Unable to read SYSCTL5 register.\n");
		return -EIO;
	}

	val &= ~(FSP_BIT_EN_MSID7 | FSP_BIT_EN_MSID8 | FSP_BIT_EN_AUTO_MSID8);
	/* Ensure we are not in absolute mode */
	val &= ~FSP_BIT_EN_PKT_G0;
	if (pad->buttons == 0x06) {
		/* Left/Middle/Right & Scroll Up/Down/Right/Left */
		val |= FSP_BIT_EN_MSID6;
	}

	if (FUNC6(psmouse, FSP_REG_SYSCTL5, val)) {
		FUNC0(&psmouse->ps2dev.serio->dev,
			"Unable to set up required mode bits.\n");
		return -EIO;
	}

	/*
	 * Enable OPC tags such that driver can tell the difference between
	 * on-pad and real button click
	 */
	if (FUNC4(psmouse, true))
		FUNC1(&psmouse->ps2dev.serio->dev,
			 "Failed to enable OPC tag mode.\n");

	/* Enable on-pad vertical and horizontal scrolling */
	FUNC3(psmouse, true);
	FUNC2(psmouse, true);

	return 0;
}