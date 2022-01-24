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
struct falcon_nic_data {int stats_pending; scalar_t__* stats_dma_done; } ;
struct efx_nic {int /*<<< orphan*/  net_dev; struct falcon_nic_data* nic_data; } ;

/* Variables and functions */
 scalar_t__ FALCON_STATS_DONE ; 
 int /*<<< orphan*/  FUNC0 (struct efx_nic*) ; 
 int /*<<< orphan*/  hw ; 
 int /*<<< orphan*/  FUNC1 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void FUNC3(struct efx_nic *efx)
{
	struct falcon_nic_data *nic_data = efx->nic_data;

	if (!nic_data->stats_pending)
		return;

	nic_data->stats_pending = false;
	if (*nic_data->stats_dma_done == FALCON_STATS_DONE) {
		FUNC2(); /* read the done flag before the stats */
		FUNC0(efx);
	} else {
		FUNC1(efx, hw, efx->net_dev,
			  "timed out waiting for statistics\n");
	}
}