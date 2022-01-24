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
struct input_dev {int dummy; } ;
struct da9034_touch {int /*<<< orphan*/  state; int /*<<< orphan*/  da9034_dev; int /*<<< orphan*/  notifier; } ;

/* Variables and functions */
 int DA9034_EVENT_PEN_DOWN ; 
 int DA9034_EVENT_TSI_READY ; 
 int /*<<< orphan*/  DA9034_LDO_ADC_EN ; 
 int /*<<< orphan*/  DA9034_MANUAL_CTRL ; 
 int /*<<< orphan*/  DA9034_TSI_CTRL1 ; 
 int /*<<< orphan*/  DA9034_TSI_CTRL2 ; 
 int EBUSY ; 
 int /*<<< orphan*/  STATE_IDLE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct da9034_touch*,int) ; 
 struct da9034_touch* FUNC4 (struct input_dev*) ; 

__attribute__((used)) static int FUNC5(struct input_dev *dev)
{
	struct da9034_touch *touch = FUNC4(dev);
	int ret;

	ret = FUNC0(touch->da9034_dev, &touch->notifier,
			DA9034_EVENT_PEN_DOWN | DA9034_EVENT_TSI_READY);
	if (ret)
		return -EBUSY;

	/* Enable ADC LDO */
	ret = FUNC1(touch->da9034_dev,
			DA9034_MANUAL_CTRL, DA9034_LDO_ADC_EN);
	if (ret)
		return ret;

	/* TSI_DELAY: 3 slots, TSI_SKIP: 3 slots */
	ret = FUNC2(touch->da9034_dev, DA9034_TSI_CTRL1, 0x1b);
	if (ret)
		return ret;

	ret = FUNC2(touch->da9034_dev, DA9034_TSI_CTRL2, 0x00);
	if (ret)
		return ret;

	touch->state = STATE_IDLE;
	FUNC3(touch, 1);

	return 0;
}