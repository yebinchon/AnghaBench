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
struct psmouse {struct ps2dev ps2dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FSP_CMD_TIMEOUT ; 
 int /*<<< orphan*/  FSP_CMD_TIMEOUT2 ; 
 int /*<<< orphan*/  PSMOUSE_ACTIVATED ; 
 int /*<<< orphan*/  PSMOUSE_CMD_DISABLE ; 
 int /*<<< orphan*/  PSMOUSE_CMD_ENABLE ; 
 int /*<<< orphan*/  PSMOUSE_CMD_GETINFO ; 
 int /*<<< orphan*/  PSMOUSE_CMD_MODE ; 
 scalar_t__ FUNC0 (struct ps2dev*,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ps2dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct ps2dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ps2dev*) ; 
 scalar_t__ FUNC5 (struct ps2dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct psmouse*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct psmouse *psmouse, int *reg_val)
{
	struct ps2dev *ps2dev = &psmouse->ps2dev;
	unsigned char param[3];
	int rc = -1;

	FUNC3(ps2dev, NULL, PSMOUSE_CMD_DISABLE);
	FUNC6(psmouse, PSMOUSE_CMD_MODE);

	FUNC2(ps2dev);

	if (FUNC5(ps2dev, 0xf3, FSP_CMD_TIMEOUT) < 0)
		goto out;

	FUNC5(ps2dev, 0x66, FSP_CMD_TIMEOUT2);
	FUNC5(ps2dev, 0x88, FSP_CMD_TIMEOUT2);

	if (FUNC5(ps2dev, 0xf3, FSP_CMD_TIMEOUT) < 0)
		goto out;

	FUNC5(ps2dev, 0x83, FSP_CMD_TIMEOUT2);
	FUNC5(ps2dev, 0x88, FSP_CMD_TIMEOUT2);

	/* get the returned result */
	if (FUNC0(ps2dev, param, PSMOUSE_CMD_GETINFO))
		goto out;

	*reg_val = param[2];
	rc = 0;

 out:
	FUNC4(ps2dev);
	FUNC3(ps2dev, NULL, PSMOUSE_CMD_ENABLE);
	FUNC6(psmouse, PSMOUSE_ACTIVATED);
	FUNC1(&ps2dev->serio->dev, "READ PAGE REG: 0x%02x (rc = %d)\n",
		*reg_val, rc);
	return rc;
}