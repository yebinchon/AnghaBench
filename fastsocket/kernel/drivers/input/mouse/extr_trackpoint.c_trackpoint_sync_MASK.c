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
struct trackpoint_data {int press_to_select; int skipback; int ext_dev; int /*<<< orphan*/  jenks; int /*<<< orphan*/  ztime; int /*<<< orphan*/  upthresh; int /*<<< orphan*/  thresh; int /*<<< orphan*/  mindrag; int /*<<< orphan*/  draghys; int /*<<< orphan*/  reach; int /*<<< orphan*/  speed; int /*<<< orphan*/  inertia; int /*<<< orphan*/  sensitivity; } ;
struct psmouse {int /*<<< orphan*/  ps2dev; struct trackpoint_data* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  TP_DRAGHYS ; 
 int /*<<< orphan*/  TP_INERTIA ; 
 int /*<<< orphan*/  TP_JENKS_CURV ; 
 unsigned char TP_MASK_EXT_DEV ; 
 unsigned char TP_MASK_MB ; 
 unsigned char TP_MASK_PTSON ; 
 unsigned char TP_MASK_SKIPBACK ; 
 unsigned char TP_MASK_SOURCE_TAG ; 
 unsigned char TP_MASK_TWOHAND ; 
 int /*<<< orphan*/  TP_MINDRAG ; 
 int /*<<< orphan*/  TP_REACH ; 
 int /*<<< orphan*/  TP_SENS ; 
 int /*<<< orphan*/  TP_SPEED ; 
 int /*<<< orphan*/  TP_THRESH ; 
 int /*<<< orphan*/  TP_TOGGLE_EXT_DEV ; 
 int /*<<< orphan*/  TP_TOGGLE_MB ; 
 int /*<<< orphan*/  TP_TOGGLE_PTSON ; 
 int /*<<< orphan*/  TP_TOGGLE_SKIPBACK ; 
 int /*<<< orphan*/  TP_TOGGLE_SOURCE_TAG ; 
 int /*<<< orphan*/  TP_TOGGLE_TWOHAND ; 
 int /*<<< orphan*/  TP_UP_THRESH ; 
 int /*<<< orphan*/  TP_Z_TIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct psmouse *psmouse)
{
	struct trackpoint_data *tp = psmouse->private;
	unsigned char toggle;

	/* Disable features that may make device unusable with this driver */
	FUNC0(&psmouse->ps2dev, TP_TOGGLE_TWOHAND, &toggle);
	if (toggle & TP_MASK_TWOHAND)
		FUNC1(&psmouse->ps2dev, TP_TOGGLE_TWOHAND, TP_MASK_TWOHAND);

	FUNC0(&psmouse->ps2dev, TP_TOGGLE_SOURCE_TAG, &toggle);
	if (toggle & TP_MASK_SOURCE_TAG)
		FUNC1(&psmouse->ps2dev, TP_TOGGLE_SOURCE_TAG, TP_MASK_SOURCE_TAG);

	FUNC0(&psmouse->ps2dev, TP_TOGGLE_MB, &toggle);
	if (toggle & TP_MASK_MB)
		FUNC1(&psmouse->ps2dev, TP_TOGGLE_MB, TP_MASK_MB);

	/* Push the config to the device */
	FUNC2(&psmouse->ps2dev, TP_SENS, tp->sensitivity);
	FUNC2(&psmouse->ps2dev, TP_INERTIA, tp->inertia);
	FUNC2(&psmouse->ps2dev, TP_SPEED, tp->speed);

	FUNC2(&psmouse->ps2dev, TP_REACH, tp->reach);
	FUNC2(&psmouse->ps2dev, TP_DRAGHYS, tp->draghys);
	FUNC2(&psmouse->ps2dev, TP_MINDRAG, tp->mindrag);

	FUNC2(&psmouse->ps2dev, TP_THRESH, tp->thresh);
	FUNC2(&psmouse->ps2dev, TP_UP_THRESH, tp->upthresh);

	FUNC2(&psmouse->ps2dev, TP_Z_TIME, tp->ztime);
	FUNC2(&psmouse->ps2dev, TP_JENKS_CURV, tp->jenks);

	FUNC0(&psmouse->ps2dev, TP_TOGGLE_PTSON, &toggle);
	if (((toggle & TP_MASK_PTSON) == TP_MASK_PTSON) != tp->press_to_select)
		 FUNC1(&psmouse->ps2dev, TP_TOGGLE_PTSON, TP_MASK_PTSON);

	FUNC0(&psmouse->ps2dev, TP_TOGGLE_SKIPBACK, &toggle);
	if (((toggle & TP_MASK_SKIPBACK) == TP_MASK_SKIPBACK) != tp->skipback)
		FUNC1(&psmouse->ps2dev, TP_TOGGLE_SKIPBACK, TP_MASK_SKIPBACK);

	FUNC0(&psmouse->ps2dev, TP_TOGGLE_EXT_DEV, &toggle);
	if (((toggle & TP_MASK_EXT_DEV) == TP_MASK_EXT_DEV) != tp->ext_dev)
		FUNC1(&psmouse->ps2dev, TP_TOGGLE_EXT_DEV, TP_MASK_EXT_DEV);

	return 0;
}