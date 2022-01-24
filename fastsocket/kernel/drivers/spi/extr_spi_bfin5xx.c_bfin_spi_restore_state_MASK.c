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
struct driver_data {TYPE_1__* pdev; struct chip_data* cur_chip; } ;
struct chip_data {int /*<<< orphan*/  baud; int /*<<< orphan*/  ctl_reg; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIT_STAT_CLR ; 
 int /*<<< orphan*/  FUNC0 (struct driver_data*,struct chip_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct driver_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct driver_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct driver_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct driver_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct driver_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct driver_data *drv_data)
{
	struct chip_data *chip = drv_data->cur_chip;

	/* Clear status and disable clock */
	FUNC6(drv_data, BIT_STAT_CLR);
	FUNC1(drv_data);
	FUNC3(&drv_data->pdev->dev, "restoring spi ctl state\n");

	/* Load the registers */
	FUNC5(drv_data, chip->ctl_reg);
	FUNC4(drv_data, chip->baud);

	FUNC2(drv_data);
	FUNC0(drv_data, chip);
}