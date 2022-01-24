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
struct falcon_nic_data {scalar_t__* stats_dma_done; scalar_t__ stats_pending; int /*<<< orphan*/  stats_timer; int /*<<< orphan*/  stats_disable_count; } ;
struct efx_nic {int /*<<< orphan*/  stats_lock; struct falcon_nic_data* nic_data; } ;

/* Variables and functions */
 scalar_t__ FALCON_STATS_DONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct efx_nic *efx)
{
	struct falcon_nic_data *nic_data = efx->nic_data;
	int i;

	FUNC2();

	FUNC4(&efx->stats_lock);
	++nic_data->stats_disable_count;
	FUNC5(&efx->stats_lock);

	FUNC0(&nic_data->stats_timer);

	/* Wait enough time for the most recent transfer to
	 * complete. */
	for (i = 0; i < 4 && nic_data->stats_pending; i++) {
		if (*nic_data->stats_dma_done == FALCON_STATS_DONE)
			break;
		FUNC3(1);
	}

	FUNC4(&efx->stats_lock);
	FUNC1(efx);
	FUNC5(&efx->stats_lock);
}