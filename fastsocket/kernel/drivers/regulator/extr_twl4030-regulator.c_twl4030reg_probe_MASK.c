#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ id; int /*<<< orphan*/  name; } ;
struct twlreg_info {TYPE_1__ desc; } ;
struct regulation_constraints {int valid_modes_mask; int valid_ops_mask; } ;
struct regulator_init_data {struct regulation_constraints constraints; } ;
struct regulator_dev {int dummy; } ;
struct TYPE_5__ {struct regulator_init_data* platform_data; } ;
struct platform_device {scalar_t__ id; TYPE_2__ dev; } ;

/* Variables and functions */
 int FUNC0 (struct twlreg_info*) ; 
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ FUNC1 (struct regulator_dev*) ; 
 int FUNC2 (struct regulator_dev*) ; 
 int REGULATOR_CHANGE_MODE ; 
 int REGULATOR_CHANGE_STATUS ; 
 int REGULATOR_CHANGE_VOLTAGE ; 
 int REGULATOR_MODE_NORMAL ; 
 int REGULATOR_MODE_STANDBY ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*,struct regulator_dev*) ; 
 struct regulator_dev* FUNC5 (TYPE_1__*,TYPE_2__*,struct regulator_init_data*,struct twlreg_info*) ; 
 struct twlreg_info* twl4030_regs ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	int				i;
	struct twlreg_info		*info;
	struct regulator_init_data	*initdata;
	struct regulation_constraints	*c;
	struct regulator_dev		*rdev;

	for (i = 0, info = NULL; i < FUNC0(twl4030_regs); i++) {
		if (twl4030_regs[i].desc.id != pdev->id)
			continue;
		info = twl4030_regs + i;
		break;
	}
	if (!info)
		return -ENODEV;

	initdata = pdev->dev.platform_data;
	if (!initdata)
		return -EINVAL;

	/* Constrain board-specific capabilities according to what
	 * this driver and the chip itself can actually do.
	 */
	c = &initdata->constraints;
	c->valid_modes_mask &= REGULATOR_MODE_NORMAL | REGULATOR_MODE_STANDBY;
	c->valid_ops_mask &= REGULATOR_CHANGE_VOLTAGE
				| REGULATOR_CHANGE_MODE
				| REGULATOR_CHANGE_STATUS;

	rdev = FUNC5(&info->desc, &pdev->dev, initdata, info);
	if (FUNC1(rdev)) {
		FUNC3(&pdev->dev, "can't register %s, %ld\n",
				info->desc.name, FUNC2(rdev));
		return FUNC2(rdev);
	}
	FUNC4(pdev, rdev);

	/* NOTE:  many regulators support short-circuit IRQs (presentable
	 * as REGULATOR_OVER_CURRENT notifications?) configured via:
	 *  - SC_CONFIG
	 *  - SC_DETECT1 (vintana2, vmmc1/2, vaux1/2/3/4)
	 *  - SC_DETECT2 (vusb, vdac, vio, vdd1/2, vpll2)
	 *  - IT_CONFIG
	 */

	return 0;
}