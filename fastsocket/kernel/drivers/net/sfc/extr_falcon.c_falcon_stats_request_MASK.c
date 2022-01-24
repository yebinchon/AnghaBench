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
struct falcon_nic_data {int stats_pending; int stats_disable_count; int /*<<< orphan*/  stats_timer; int /*<<< orphan*/ * stats_dma_done; } ;
struct TYPE_2__ {int /*<<< orphan*/  dma_addr; } ;
struct efx_nic {TYPE_1__ stats_buffer; struct falcon_nic_data* nic_data; } ;
typedef  int /*<<< orphan*/  efx_oword_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALCON_STATS_NOT_DONE ; 
 int /*<<< orphan*/  FRF_AB_MAC_STAT_DMA_ADR ; 
 int /*<<< orphan*/  FRF_AB_MAC_STAT_DMA_CMD ; 
 int /*<<< orphan*/  FR_AB_MAC_STAT_DMA ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct efx_nic*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void FUNC6(struct efx_nic *efx)
{
	struct falcon_nic_data *nic_data = efx->nic_data;
	efx_oword_t reg;

	FUNC1(nic_data->stats_pending);
	FUNC1(nic_data->stats_disable_count);

	if (nic_data->stats_dma_done == NULL)
		return;	/* no mac selected */

	*nic_data->stats_dma_done = FALCON_STATS_NOT_DONE;
	nic_data->stats_pending = true;
	FUNC5(); /* ensure done flag is clear */

	/* Initiate DMA transfer of stats */
	FUNC0(reg,
			     FRF_AB_MAC_STAT_DMA_CMD, 1,
			     FRF_AB_MAC_STAT_DMA_ADR,
			     efx->stats_buffer.dma_addr);
	FUNC2(efx, &reg, FR_AB_MAC_STAT_DMA);

	FUNC3(&nic_data->stats_timer, FUNC4(jiffies + HZ / 2));
}