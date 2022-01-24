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
struct psmouse {struct alps_data* private; } ;
struct alps_data {void* proto_version; int /*<<< orphan*/  flags; int /*<<< orphan*/  decode_fields; int /*<<< orphan*/  hw_init; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALPS_DUALPOINT ; 
 void* ALPS_PROTO_V3 ; 
 void* ALPS_PROTO_V5 ; 
 int /*<<< orphan*/  ALPS_REG_BASE_RUSHMORE ; 
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  PSMOUSE_CMD_RESET_WRAP ; 
 int /*<<< orphan*/  PSMOUSE_CMD_SETRES ; 
 int /*<<< orphan*/  PSMOUSE_CMD_SETSCALE11 ; 
 int /*<<< orphan*/  PSMOUSE_CMD_SETSCALE21 ; 
 int /*<<< orphan*/  alps_decode_rushmore ; 
 scalar_t__ FUNC0 (struct psmouse*) ; 
 int /*<<< orphan*/  alps_hw_init_rushmore_v3 ; 
 scalar_t__ FUNC1 (struct psmouse*,struct alps_data*,unsigned char*,unsigned char*) ; 
 scalar_t__ FUNC2 (struct psmouse*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct psmouse*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (struct alps_data*) ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char) ; 

__attribute__((used)) static int FUNC6(struct psmouse *psmouse, struct alps_data *priv)
{
	unsigned char e6[4], e7[4], ec[4];

	/*
	 * First try "E6 report".
	 * ALPS should return 0,0,10 or 0,0,100 if no buttons are pressed.
	 * The bits 0-2 of the first byte will be 1s if some buttons are
	 * pressed.
	 */
	if (FUNC3(psmouse, PSMOUSE_CMD_SETRES,
			 PSMOUSE_CMD_SETSCALE11, e6))
		return -EIO;

	if ((e6[0] & 0xf8) != 0 || e6[1] != 0 || (e6[2] != 10 && e6[2] != 100))
		return -EINVAL;

	/*
	 * Now get the "E7" and "EC" reports.  These will uniquely identify
	 * most ALPS touchpads.
	 */
	if (FUNC3(psmouse, PSMOUSE_CMD_SETRES,
			 PSMOUSE_CMD_SETSCALE21, e7) ||
	    FUNC3(psmouse, PSMOUSE_CMD_SETRES,
			 PSMOUSE_CMD_RESET_WRAP, ec) ||
	    FUNC0(psmouse))
		return -EIO;

	if (FUNC1(psmouse, priv, e7, ec) == 0) {
		return 0;
	} else if (e7[0] == 0x73 && e7[1] == 0x03 && e7[2] == 0x50 &&
		   ec[0] == 0x73 && ec[1] == 0x01) {
		priv->proto_version = ALPS_PROTO_V5;
		FUNC4(priv);

		return 0;
	} else if (ec[0] == 0x88 && ec[1] == 0x08) {
		priv->proto_version = ALPS_PROTO_V3;
		FUNC4(priv);

		priv->hw_init = alps_hw_init_rushmore_v3;
		priv->decode_fields = alps_decode_rushmore;

		/* hack to make addr_command, nibble_command available */
		psmouse->private = priv;

		if (FUNC2(psmouse, ALPS_REG_BASE_RUSHMORE))
			priv->flags &= ~ALPS_DUALPOINT;

		return 0;
	} else if (ec[0] == 0x88 && ec[1] == 0x07 &&
		   ec[2] >= 0x90 && ec[2] <= 0x9d) {
		priv->proto_version = ALPS_PROTO_V3;
		FUNC4(priv);

		return 0;
	}

	FUNC5("Unknown ALPS touchpad: E7=%2.2x %2.2x %2.2x, EC=%2.2x %2.2x %2.2x\n",
	    e7[0], e7[1], e7[2], ec[0], ec[1], ec[2]);

	return -EINVAL;
}