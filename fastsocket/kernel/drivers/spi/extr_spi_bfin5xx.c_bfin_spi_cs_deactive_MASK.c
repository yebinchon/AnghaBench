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
typedef  int u16 ;
struct driver_data {int dummy; } ;
struct chip_data {int flag; scalar_t__ cs_chg_udelay; int /*<<< orphan*/  cs_gpio; int /*<<< orphan*/  chip_select_num; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct driver_data*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct driver_data*,int) ; 

__attribute__((used)) static void FUNC5(struct driver_data *drv_data, struct chip_data *chip)
{
	if (FUNC1(chip->chip_select_num)) {
		u16 flag = FUNC2(drv_data);

		flag &= ~chip->flag;
		flag |= (chip->flag << 8);

		FUNC4(drv_data, flag);
	} else {
		FUNC0(chip->cs_gpio, 1);
	}

	/* Move delay here for consistency */
	if (chip->cs_chg_udelay)
		FUNC3(chip->cs_chg_udelay);
}