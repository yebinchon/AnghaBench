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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int) ; 
 unsigned char FUNC1 (int) ; 
 unsigned char FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct ps2dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct ps2dev*) ; 
 scalar_t__ FUNC5 (struct ps2dev*,unsigned char,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct psmouse *psmouse, int reg_val)
{
	struct ps2dev *ps2dev = &psmouse->ps2dev;
	unsigned char v;
	int rc = -1;

	FUNC3(ps2dev);

	if (FUNC5(ps2dev, 0xf3, FSP_CMD_TIMEOUT) < 0)
		goto out;

	FUNC5(ps2dev, 0x38, FSP_CMD_TIMEOUT2);
	FUNC5(ps2dev, 0x88, FSP_CMD_TIMEOUT2);

	if (FUNC5(ps2dev, 0xf3, FSP_CMD_TIMEOUT) < 0)
		return -1;

	if ((v = FUNC1(reg_val)) != reg_val) {
		FUNC5(ps2dev, 0x47, FSP_CMD_TIMEOUT2);
	} else if ((v = FUNC2(reg_val)) != reg_val) {
		/* swapping is required */
		FUNC5(ps2dev, 0x44, FSP_CMD_TIMEOUT2);
	} else {
		/* swapping isn't necessary */
		FUNC5(ps2dev, 0x33, FSP_CMD_TIMEOUT2);
	}

	FUNC5(ps2dev, v, FSP_CMD_TIMEOUT2);
	rc = 0;

 out:
	FUNC4(ps2dev);
	FUNC0(&ps2dev->serio->dev, "WRITE PAGE REG: to 0x%02x (rc = %d)\n",
		reg_val, rc);
	return rc;
}