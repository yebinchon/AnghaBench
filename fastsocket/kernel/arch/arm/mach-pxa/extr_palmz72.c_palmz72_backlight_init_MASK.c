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
 int /*<<< orphan*/  GPIO_NR_PALMZ72_BL_POWER ; 
 int /*<<< orphan*/  GPIO_NR_PALMZ72_LCD_POWER ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC3(struct device *dev)
{
	int ret;

	ret = FUNC2(GPIO_NR_PALMZ72_BL_POWER, "BL POWER");
	if (ret)
		goto err;
	ret = FUNC0(GPIO_NR_PALMZ72_BL_POWER, 0);
	if (ret)
		goto err2;
	ret = FUNC2(GPIO_NR_PALMZ72_LCD_POWER, "LCD POWER");
	if (ret)
		goto err2;
	ret = FUNC0(GPIO_NR_PALMZ72_LCD_POWER, 0);
	if (ret)
		goto err3;

	return 0;
err3:
	FUNC1(GPIO_NR_PALMZ72_LCD_POWER);
err2:
	FUNC1(GPIO_NR_PALMZ72_BL_POWER);
err:
	return ret;
}