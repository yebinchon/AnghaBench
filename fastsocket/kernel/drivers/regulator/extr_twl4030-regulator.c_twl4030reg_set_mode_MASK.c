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
struct twlreg_info {int /*<<< orphan*/  id; } ;
struct regulator_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEV_GRP_P1 ; 
 int EACCES ; 
 int EINVAL ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int P1_GRP ; 
 int P2_GRP ; 
 int P3_GRP ; 
#define  REGULATOR_MODE_NORMAL 129 
#define  REGULATOR_MODE_STANDBY 128 
 int /*<<< orphan*/  RES_STATE_ACTIVE ; 
 int /*<<< orphan*/  RES_STATE_SLEEP ; 
 int /*<<< orphan*/  TWL4030_MODULE_PM_MASTER ; 
 struct twlreg_info* FUNC1 (struct regulator_dev*) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned int,int) ; 
 int FUNC3 (struct regulator_dev*) ; 

__attribute__((used)) static int FUNC4(struct regulator_dev *rdev, unsigned mode)
{
	struct twlreg_info	*info = FUNC1(rdev);
	unsigned		message;
	int			status;

	/* We can only set the mode through state machine commands... */
	switch (mode) {
	case REGULATOR_MODE_NORMAL:
		message = FUNC0(DEV_GRP_P1, info->id, RES_STATE_ACTIVE);
		break;
	case REGULATOR_MODE_STANDBY:
		message = FUNC0(DEV_GRP_P1, info->id, RES_STATE_SLEEP);
		break;
	default:
		return -EINVAL;
	}

	/* Ensure the resource is associated with some group */
	status = FUNC3(rdev);
	if (status < 0)
		return status;
	if (!(status & (P3_GRP | P2_GRP | P1_GRP)))
		return -EACCES;

	status = FUNC2(TWL4030_MODULE_PM_MASTER,
			message >> 8, 0x15 /* PB_WORD_MSB */ );
	if (status >= 0)
		return status;

	return FUNC2(TWL4030_MODULE_PM_MASTER,
			message, 0x16 /* PB_WORD_LSB */ );
}