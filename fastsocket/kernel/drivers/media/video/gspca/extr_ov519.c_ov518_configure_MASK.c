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
struct sd {int bridge; } ;
struct ov_regvals {int member_0; int member_1; } ;
struct gspca_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ov_regvals const*) ; 
#define  BRIDGE_OV518 129 
#define  BRIDGE_OV518PLUS 128 
 int /*<<< orphan*/  D_PROBE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  R518_GPIO_CTL ; 
 int /*<<< orphan*/  R51x_SYS_CUST_ID ; 
 int R51x_SYS_INIT ; 
 int R51x_SYS_RESET ; 
 int R51x_SYS_SNAP ; 
 int /*<<< orphan*/  FUNC2 (struct sd*) ; 
 int FUNC3 (struct sd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sd*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sd*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sd*,struct ov_regvals const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct gspca_dev *gspca_dev)
{
	struct sd *sd = (struct sd *) gspca_dev;

	/* For 518 and 518+ */
	const struct ov_regvals init_518[] = {
		{ R51x_SYS_RESET,	0x40 },
		{ R51x_SYS_INIT,	0xe1 },
		{ R51x_SYS_RESET,	0x3e },
		{ R51x_SYS_INIT,	0xe1 },
		{ R51x_SYS_RESET,	0x00 },
		{ R51x_SYS_INIT,	0xe1 },
		{ 0x46,			0x00 },
		{ 0x5d,			0x03 },
	};

	const struct ov_regvals norm_518[] = {
		{ R51x_SYS_SNAP,	0x02 }, /* Reset */
		{ R51x_SYS_SNAP,	0x01 }, /* Enable */
		{ 0x31,			0x0f },
		{ 0x5d,			0x03 },
		{ 0x24,			0x9f },
		{ 0x25,			0x90 },
		{ 0x20,			0x00 },
		{ 0x51,			0x04 },
		{ 0x71,			0x19 },
		{ 0x2f,			0x80 },
	};

	const struct ov_regvals norm_518_p[] = {
		{ R51x_SYS_SNAP,	0x02 }, /* Reset */
		{ R51x_SYS_SNAP,	0x01 }, /* Enable */
		{ 0x31,			0x0f },
		{ 0x5d,			0x03 },
		{ 0x24,			0x9f },
		{ 0x25,			0x90 },
		{ 0x20,			0x60 },
		{ 0x51,			0x02 },
		{ 0x71,			0x19 },
		{ 0x40,			0xff },
		{ 0x41,			0x42 },
		{ 0x46,			0x00 },
		{ 0x33,			0x04 },
		{ 0x21,			0x19 },
		{ 0x3f,			0x10 },
		{ 0x2f,			0x80 },
	};

	/* First 5 bits of custom ID reg are a revision ID on OV518 */
	FUNC1(D_PROBE, "Device revision %d",
		0x1f & FUNC3(sd, R51x_SYS_CUST_ID));

	FUNC6(sd, init_518, FUNC0(init_518));

	/* Set LED GPIO pin to output mode */
	FUNC5(sd, R518_GPIO_CTL, 0x00, 0x02);

	switch (sd->bridge) {
	case BRIDGE_OV518:
		FUNC6(sd, norm_518, FUNC0(norm_518));
		break;
	case BRIDGE_OV518PLUS:
		FUNC6(sd, norm_518_p, FUNC0(norm_518_p));
		break;
	}

	FUNC2(sd);

	FUNC4(sd, 0x2f, 0x80);
}