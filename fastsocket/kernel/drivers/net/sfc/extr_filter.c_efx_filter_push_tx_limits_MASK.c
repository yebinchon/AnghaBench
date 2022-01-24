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
struct efx_nic {struct efx_filter_state* filter_state; } ;
struct efx_filter_table {scalar_t__* search_depth; scalar_t__ size; } ;
struct efx_filter_state {struct efx_filter_table* table; } ;
typedef  int /*<<< orphan*/  efx_oword_t ;

/* Variables and functions */
 size_t EFX_FILTER_MAC_FULL ; 
 size_t EFX_FILTER_MAC_WILD ; 
 size_t EFX_FILTER_TABLE_TX_MAC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FILTER_CTL_SRCH_FUDGE_FULL ; 
 scalar_t__ FILTER_CTL_SRCH_FUDGE_WILD ; 
 int /*<<< orphan*/  FRF_CZ_TX_ETH_FILTER_FULL_SEARCH_RANGE ; 
 int /*<<< orphan*/  FRF_CZ_TX_ETH_FILTER_WILD_SEARCH_RANGE ; 
 int /*<<< orphan*/  FR_AZ_TX_CFG ; 
 int /*<<< orphan*/  FUNC1 (struct efx_nic*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct efx_nic*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct efx_nic *efx)
{
	struct efx_filter_state *state = efx->filter_state;
	struct efx_filter_table *table;
	efx_oword_t tx_cfg;

	FUNC1(efx, &tx_cfg, FR_AZ_TX_CFG);

	table = &state->table[EFX_FILTER_TABLE_TX_MAC];
	if (table->size) {
		FUNC0(
			tx_cfg, FRF_CZ_TX_ETH_FILTER_FULL_SEARCH_RANGE,
			table->search_depth[EFX_FILTER_MAC_FULL] +
			FILTER_CTL_SRCH_FUDGE_FULL);
		FUNC0(
			tx_cfg, FRF_CZ_TX_ETH_FILTER_WILD_SEARCH_RANGE,
			table->search_depth[EFX_FILTER_MAC_WILD] +
			FILTER_CTL_SRCH_FUDGE_WILD);
	}

	FUNC2(efx, &tx_cfg, FR_AZ_TX_CFG);
}