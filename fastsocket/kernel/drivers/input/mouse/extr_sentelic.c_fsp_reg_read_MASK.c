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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,int,int) ; 
 unsigned char FUNC2 (int) ; 
 unsigned char FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct ps2dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct ps2dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ps2dev*) ; 
 scalar_t__ FUNC7 (struct ps2dev*,unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct psmouse*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct psmouse *psmouse, int reg_addr, int *reg_val)
{
	struct ps2dev *ps2dev = &psmouse->ps2dev;
	unsigned char param[3];
	unsigned char addr;
	int rc = -1;

	/*
	 * We need to shut off the device and switch it into command
	 * mode so we don't confuse our protocol handler. We don't need
	 * to do that for writes because sysfs set helper does this for
	 * us.
	 */
	FUNC5(ps2dev, NULL, PSMOUSE_CMD_DISABLE);
	FUNC8(psmouse, PSMOUSE_CMD_MODE);

	FUNC4(ps2dev);

	if (FUNC7(ps2dev, 0xf3, FSP_CMD_TIMEOUT) < 0)
		goto out;

	/* should return 0xfe(request for resending) */
	FUNC7(ps2dev, 0x66, FSP_CMD_TIMEOUT2);
	/* should return 0xfc(failed) */
	FUNC7(ps2dev, 0x88, FSP_CMD_TIMEOUT2);

	if (FUNC7(ps2dev, 0xf3, FSP_CMD_TIMEOUT) < 0)
		goto out;

	if ((addr = FUNC2(reg_addr)) != reg_addr) {
		FUNC7(ps2dev, 0x68, FSP_CMD_TIMEOUT2);
	} else if ((addr = FUNC3(reg_addr)) != reg_addr) {
		/* swapping is required */
		FUNC7(ps2dev, 0xcc, FSP_CMD_TIMEOUT2);
		/* expect 0xfe */
	} else {
		/* swapping isn't necessary */
		FUNC7(ps2dev, 0x66, FSP_CMD_TIMEOUT2);
		/* expect 0xfe */
	}
	/* should return 0xfc(failed) */
	FUNC7(ps2dev, addr, FSP_CMD_TIMEOUT);

	if (FUNC0(ps2dev, param, PSMOUSE_CMD_GETINFO) < 0)
		goto out;

	*reg_val = param[2];
	rc = 0;

 out:
	FUNC6(ps2dev);
	FUNC5(ps2dev, NULL, PSMOUSE_CMD_ENABLE);
	FUNC8(psmouse, PSMOUSE_ACTIVATED);
	FUNC1(&ps2dev->serio->dev, "READ REG: 0x%02x is 0x%02x (rc = %d)\n",
		reg_addr, *reg_val, rc);
	return rc;
}