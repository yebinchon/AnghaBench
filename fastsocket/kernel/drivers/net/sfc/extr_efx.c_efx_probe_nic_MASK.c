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
struct efx_nic {int n_channels; TYPE_1__* type; int /*<<< orphan*/  n_tx_channels; int /*<<< orphan*/  net_dev; int /*<<< orphan*/  rss_spread; int /*<<< orphan*/ * rx_indir_table; int /*<<< orphan*/  rx_hash_key; } ;
struct TYPE_2__ {int (* probe ) (struct efx_nic*) ;int /*<<< orphan*/  (* remove ) (struct efx_nic*) ;int /*<<< orphan*/  (* dimension_resources ) (struct efx_nic*) ;} ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC3 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC4 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  probe ; 
 int /*<<< orphan*/  rx_irq_mod_usec ; 
 int FUNC8 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC9 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC10 (struct efx_nic*) ; 
 int /*<<< orphan*/  tx_irq_mod_usec ; 

__attribute__((used)) static int FUNC11(struct efx_nic *efx)
{
	size_t i;
	int rc;

	FUNC6(efx, probe, efx->net_dev, "creating NIC\n");

	/* Carry out hardware-type specific initialisation */
	rc = efx->type->probe(efx);
	if (rc)
		return rc;

	/* Determine the number of channels and queues by trying to hook
	 * in MSI-X interrupts. */
	rc = FUNC2(efx);
	if (rc)
		goto fail;
		
	efx->type->dimension_resources(efx);

	if (efx->n_channels > 1)
		FUNC5(&efx->rx_hash_key, sizeof(efx->rx_hash_key));
	for (i = 0; i < FUNC0(efx->rx_indir_table); i++)
		efx->rx_indir_table[i] =
			FUNC4(i, efx->rss_spread);

	FUNC3(efx);
	FUNC7(efx->net_dev, efx->n_tx_channels);

	/* Initialise the interrupt moderation settings */
	FUNC1(efx, tx_irq_mod_usec, rx_irq_mod_usec, true,
				true);

	return 0;

fail:
	efx->type->remove(efx);
	return rc;
}