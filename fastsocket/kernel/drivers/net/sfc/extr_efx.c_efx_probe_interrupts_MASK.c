#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct msix_entry {unsigned int entry; int /*<<< orphan*/  vector; } ;
struct efx_nic {scalar_t__ interrupt_mode; unsigned int n_channels; unsigned int n_tx_channels; unsigned int n_rx_channels; int rss_spread; TYPE_2__** extra_channel_type; TYPE_3__* pci_dev; int /*<<< orphan*/  legacy_irq; int /*<<< orphan*/  net_dev; TYPE_1__* type; } ;
struct TYPE_9__ {TYPE_2__* type; int /*<<< orphan*/  irq; } ;
struct TYPE_8__ {int /*<<< orphan*/  irq; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* handle_no_channel ) (struct efx_nic*) ;} ;
struct TYPE_6__ {unsigned int phys_addr_channels; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ EFX_INT_MODE_LEGACY ; 
 scalar_t__ EFX_INT_MODE_MSI ; 
 scalar_t__ EFX_INT_MODE_MSIX ; 
 int EFX_MAX_CHANNELS ; 
 unsigned int EFX_MAX_EXTRA_CHANNELS ; 
 int /*<<< orphan*/  drv ; 
 TYPE_5__* FUNC1 (struct efx_nic*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct efx_nic*) ; 
 int FUNC3 (struct efx_nic*) ; 
 unsigned int FUNC4 (struct efx_nic*) ; 
 void* FUNC5 (unsigned int,unsigned int) ; 
 unsigned int FUNC6 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC8 (TYPE_3__*) ; 
 int FUNC9 (TYPE_3__*,struct msix_entry*,unsigned int) ; 
 scalar_t__ separate_tx_channels ; 
 int /*<<< orphan*/  FUNC10 (struct efx_nic*) ; 

__attribute__((used)) static int FUNC11(struct efx_nic *efx)
{
	unsigned int max_channels =
		FUNC6(efx->type->phys_addr_channels, EFX_MAX_CHANNELS);
	unsigned int extra_channels = 0;
	unsigned int i, j;
	int rc;

	for (i = 0; i < EFX_MAX_EXTRA_CHANNELS; i++)
		if (efx->extra_channel_type[i])
			++extra_channels;

	if (efx->interrupt_mode == EFX_INT_MODE_MSIX) {
		struct msix_entry xentries[EFX_MAX_CHANNELS];
		unsigned int n_channels;

		n_channels = FUNC4(efx);
		if (separate_tx_channels)
			n_channels *= 2;
		n_channels += extra_channels;
		n_channels = FUNC6(n_channels, max_channels);

		for (i = 0; i < n_channels; i++)
			xentries[i].entry = i;
		rc = FUNC9(efx->pci_dev, xentries, n_channels);
		if (rc > 0) {
			FUNC7(efx, drv, efx->net_dev,
				  "WARNING: Insufficient MSI-X vectors"
				  " available (%d < %u).\n", rc, n_channels);
			FUNC7(efx, drv, efx->net_dev,
				  "WARNING: Performance may be reduced.\n");
			FUNC0(rc >= n_channels);
			n_channels = rc;
			rc = FUNC9(efx->pci_dev, xentries,
					     n_channels);
		}

		if (rc == 0) {
			efx->n_channels = n_channels;
			if (n_channels > extra_channels)
				n_channels -= extra_channels;
			if (separate_tx_channels) {
				efx->n_tx_channels = FUNC5(n_channels / 2, 1U);
				efx->n_rx_channels = FUNC5(n_channels -
							 efx->n_tx_channels,
							 1U);
			} else {
				efx->n_tx_channels = n_channels;
				efx->n_rx_channels = n_channels;
			}
			for (i = 0; i < efx->n_channels; i++)
				FUNC1(efx, i)->irq =
					xentries[i].vector;
		} else {
			/* Fall back to single channel MSI */
			efx->interrupt_mode = EFX_INT_MODE_MSI;
			FUNC7(efx, drv, efx->net_dev,
				  "could not enable MSI-X\n");
		}
	}

	/* Try single interrupt MSI */
	if (efx->interrupt_mode == EFX_INT_MODE_MSI) {
		efx->n_channels = 1;
		efx->n_rx_channels = 1;
		efx->n_tx_channels = 1;
		rc = FUNC8(efx->pci_dev);
		if (rc == 0) {
			FUNC1(efx, 0)->irq = efx->pci_dev->irq;
		} else {
			FUNC7(efx, drv, efx->net_dev,
				  "could not enable MSI\n");
			efx->interrupt_mode = EFX_INT_MODE_LEGACY;
		}
	}

	/* Assume legacy interrupts */
	if (efx->interrupt_mode == EFX_INT_MODE_LEGACY) {
		efx->n_channels = 1 + (separate_tx_channels ? 1 : 0);
		efx->n_rx_channels = 1;
		efx->n_tx_channels = 1;
		efx->legacy_irq = efx->pci_dev->irq;
	}

	/* Assign extra channels if possible */
	j = efx->n_channels;
	for (i = 0; i < EFX_MAX_EXTRA_CHANNELS; i++) {
		if (!efx->extra_channel_type[i])
			continue;
		if (efx->interrupt_mode != EFX_INT_MODE_MSIX ||
			efx->n_channels <= extra_channels) {
			efx->extra_channel_type[i]->handle_no_channel(efx);
		} else {
			--j;
			FUNC1(efx, j)->type =
				efx->extra_channel_type[i];
		}
	}

	/* RSS might be usable on VFs even if it is disabled on the PF */
	efx->rss_spread = ((efx->n_rx_channels > 1 || !FUNC2(efx)) ?
			   efx->n_rx_channels : FUNC3(efx));

	return 0;
}