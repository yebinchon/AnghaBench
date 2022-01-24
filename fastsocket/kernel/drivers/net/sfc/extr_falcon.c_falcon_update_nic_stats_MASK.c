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
struct falcon_nic_data {int stats_pending; scalar_t__* stats_dma_done; scalar_t__ stats_disable_count; } ;
struct efx_nic {int /*<<< orphan*/  n_rx_nodesc_drop_cnt; struct falcon_nic_data* nic_data; } ;
typedef  int /*<<< orphan*/  efx_oword_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FALCON_STATS_DONE ; 
 int /*<<< orphan*/  FRF_AB_RX_NODESC_DROP_CNT ; 
 int /*<<< orphan*/  FR_AZ_RX_NODESC_DROP ; 
 int /*<<< orphan*/  FUNC1 (struct efx_nic*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(struct efx_nic *efx)
{
	struct falcon_nic_data *nic_data = efx->nic_data;
	efx_oword_t cnt;

	if (nic_data->stats_disable_count)
		return;

	FUNC1(efx, &cnt, FR_AZ_RX_NODESC_DROP);
	efx->n_rx_nodesc_drop_cnt +=
		FUNC0(cnt, FRF_AB_RX_NODESC_DROP_CNT);

	if (nic_data->stats_pending &&
	    *nic_data->stats_dma_done == FALCON_STATS_DONE) {
		nic_data->stats_pending = false;
		FUNC3(); /* read the done flag before the stats */
		FUNC2(efx);
	}
}