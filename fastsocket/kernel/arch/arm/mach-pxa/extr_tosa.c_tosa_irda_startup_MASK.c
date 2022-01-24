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
struct device {int dummy; } ;

/* Variables and functions */
 int IR_OFF ; 
 int IR_SIRMODE ; 
 int /*<<< orphan*/  TOSA_GPIO_IRDA_TX ; 
 int /*<<< orphan*/  TOSA_GPIO_IR_POWERDWN ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int) ; 

__attribute__((used)) static int FUNC4(struct device *dev)
{
	int ret;

	ret = FUNC2(TOSA_GPIO_IRDA_TX, "IrDA TX");
	if (ret)
		goto err_tx;
	ret = FUNC0(TOSA_GPIO_IRDA_TX, 0);
	if (ret)
		goto err_tx_dir;

	ret = FUNC2(TOSA_GPIO_IR_POWERDWN, "IrDA powerdown");
	if (ret)
		goto err_pwr;

	ret = FUNC0(TOSA_GPIO_IR_POWERDWN, 0);
	if (ret)
		goto err_pwr_dir;

	FUNC3(dev, IR_SIRMODE | IR_OFF);

	return 0;

err_pwr_dir:
	FUNC1(TOSA_GPIO_IR_POWERDWN);
err_pwr:
err_tx_dir:
	FUNC1(TOSA_GPIO_IRDA_TX);
err_tx:
	return ret;
}