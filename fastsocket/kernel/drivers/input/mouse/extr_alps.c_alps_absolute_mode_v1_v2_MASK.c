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
struct psmouse {struct ps2dev ps2dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PSMOUSE_CMD_DISABLE ; 
 int /*<<< orphan*/  PSMOUSE_CMD_ENABLE ; 
 int /*<<< orphan*/  PSMOUSE_CMD_SETPOLL ; 
 int FUNC0 (struct ps2dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct psmouse *psmouse)
{
	struct ps2dev *ps2dev = &psmouse->ps2dev;

	/* Try ALPS magic knock - 4 disable before enable */
	if (FUNC0(ps2dev, NULL, PSMOUSE_CMD_DISABLE) ||
	    FUNC0(ps2dev, NULL, PSMOUSE_CMD_DISABLE) ||
	    FUNC0(ps2dev, NULL, PSMOUSE_CMD_DISABLE) ||
	    FUNC0(ps2dev, NULL, PSMOUSE_CMD_DISABLE) ||
	    FUNC0(ps2dev, NULL, PSMOUSE_CMD_ENABLE))
		return -1;

	/*
	 * Switch mouse to poll (remote) mode so motion data will not
	 * get in our way
	 */
	return FUNC0(&psmouse->ps2dev, NULL, PSMOUSE_CMD_SETPOLL);
}