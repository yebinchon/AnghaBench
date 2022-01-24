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
typedef  int /*<<< orphan*/  u16 ;
struct driver_data {scalar_t__ rx; scalar_t__ rx_end; scalar_t__ tx; struct chip_data* cur_chip; } ;
struct chip_data {int dummy; } ;

/* Variables and functions */
 int BIT_STAT_RXS ; 
 int /*<<< orphan*/  FUNC0 (struct driver_data*,struct chip_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct driver_data*,struct chip_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct driver_data*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct driver_data*) ; 
 int FUNC5 (struct driver_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct driver_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct driver_data *drv_data)
{
	struct chip_data *chip = drv_data->cur_chip;

	/* discard old RX data and clear RXS */
	FUNC2(drv_data);

	while (drv_data->rx < drv_data->rx_end) {
		FUNC0(drv_data, chip);
		FUNC6(drv_data, (*(u16 *) (drv_data->tx)));
		drv_data->tx += 2;
		while (!(FUNC5(drv_data) & BIT_STAT_RXS))
			FUNC3();
		*(u16 *) (drv_data->rx) = FUNC4(drv_data);
		drv_data->rx += 2;
		FUNC1(drv_data, chip);
	}
}