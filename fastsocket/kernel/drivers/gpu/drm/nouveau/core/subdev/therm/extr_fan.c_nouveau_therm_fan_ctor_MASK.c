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
struct nouveau_therm_priv {TYPE_1__* fan; } ;
struct nouveau_therm {int dummy; } ;
struct nouveau_gpio {int (* find ) (struct nouveau_gpio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct dcb_gpio_func*) ;} ;
struct nouveau_bios {int dummy; } ;
struct dcb_gpio_func {int* log; int /*<<< orphan*/  func; } ;
struct TYPE_2__ {int /*<<< orphan*/  bios; int /*<<< orphan*/  perf; int /*<<< orphan*/  lock; int /*<<< orphan*/  alarm; struct nouveau_therm* parent; struct dcb_gpio_func tach; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  DCB_GPIO_FAN ; 
 int /*<<< orphan*/  DCB_GPIO_FAN_SENSE ; 
 int DCB_GPIO_LOG_DIR_IN ; 
 int /*<<< orphan*/  DCB_GPIO_UNUSED ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct nouveau_bios* FUNC1 (struct nouveau_therm*) ; 
 int /*<<< orphan*/  nouveau_fan_alarm ; 
 int FUNC2 (struct nouveau_therm*) ; 
 int FUNC3 (struct nouveau_therm*,struct dcb_gpio_func*) ; 
 int FUNC4 (struct nouveau_therm*,struct dcb_gpio_func*) ; 
 struct nouveau_gpio* FUNC5 (struct nouveau_therm*) ; 
 int /*<<< orphan*/  FUNC6 (struct nouveau_therm*) ; 
 int /*<<< orphan*/  FUNC7 (struct nouveau_therm*) ; 
 int /*<<< orphan*/  FUNC8 (struct nouveau_therm*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct nouveau_therm*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct nouveau_therm*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct nouveau_bios*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (struct nouveau_bios*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (struct nouveau_gpio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct dcb_gpio_func*) ; 
 int FUNC15 (struct nouveau_gpio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct dcb_gpio_func*) ; 

int
FUNC16(struct nouveau_therm *therm)
{
	struct nouveau_therm_priv *priv = (void *)therm;
	struct nouveau_gpio *gpio = FUNC5(therm);
	struct nouveau_bios *bios = FUNC1(therm);
	struct dcb_gpio_func func;
	int ret;

	/* attempt to locate a drivable fan, and determine control method */
	ret = gpio->find(gpio, 0, DCB_GPIO_FAN, 0xff, &func);
	if (ret == 0) {
		if (func.log[0] & DCB_GPIO_LOG_DIR_IN) {
			FUNC8(therm, "GPIO_FAN is in input mode\n");
			ret = -EINVAL;
		} else {
			ret = FUNC3(therm, &func);
			if (ret != 0)
				ret = FUNC4(therm, &func);
		}
	}

	/* no controllable fan found, create a dummy fan module */
	if (ret != 0) {
		ret = FUNC2(therm);
		if (ret)
			return ret;
	}

	FUNC10(therm, "FAN control: %s\n", priv->fan->type);

	/* attempt to detect a tachometer connection */
	ret = gpio->find(gpio, 0, DCB_GPIO_FAN_SENSE, 0xff, &priv->fan->tach);
	if (ret)
		priv->fan->tach.func = DCB_GPIO_UNUSED;

	/* initialise fan bump/slow update handling */
	priv->fan->parent = therm;
	FUNC0(&priv->fan->alarm, nouveau_fan_alarm);
	FUNC13(&priv->fan->lock);

	/* other random init... */
	FUNC7(therm);
	FUNC11(bios, &priv->fan->perf);
	if (FUNC12(bios, &priv->fan->bios))
		FUNC9(therm, "parsing the thermal table failed\n");
	FUNC6(therm);
	return 0;
}