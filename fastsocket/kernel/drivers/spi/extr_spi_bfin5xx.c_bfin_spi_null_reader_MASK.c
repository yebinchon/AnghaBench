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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct driver_data {scalar_t__ n_bytes; scalar_t__ rx; scalar_t__ rx_end; TYPE_1__* cur_chip; } ;
struct TYPE_2__ {int /*<<< orphan*/  idle_tx_val; } ;

/* Variables and functions */
 int BIT_STAT_RXS ; 
 int /*<<< orphan*/  FUNC0 (struct driver_data*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (struct driver_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct driver_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct driver_data *drv_data)
{
	u8 n_bytes = drv_data->n_bytes;
	u16 tx_val = drv_data->cur_chip->idle_tx_val;

	/* discard old RX data and clear RXS */
	FUNC0(drv_data);

	while (drv_data->rx < drv_data->rx_end) {
		FUNC3(drv_data, tx_val);
		drv_data->rx += n_bytes;
		while (!(FUNC2(drv_data) & BIT_STAT_RXS))
			FUNC1();
		FUNC0(drv_data);
	}
}