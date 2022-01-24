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
struct efx_nic {scalar_t__ n_channels; int legacy_irq_enabled; scalar_t__ legacy_irq; int /*<<< orphan*/  loopback_selftest; } ;
struct efx_channel {scalar_t__ channel; int /*<<< orphan*/  napi_str; scalar_t__ eventq_mask; scalar_t__ irq; int /*<<< orphan*/  enabled; struct efx_nic* efx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct efx_channel*) ; 
 int /*<<< orphan*/  FUNC2 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC3 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC4 (struct efx_channel*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 

void FUNC8(struct efx_channel *channel)
{
	struct efx_nic *efx = channel->efx;

	FUNC0(channel->channel >= efx->n_channels);
	FUNC0(!channel->enabled);
	FUNC0(!efx->loopback_selftest);

	/* Disable interrupts and wait for ISRs to complete */
	FUNC2(efx);
	if (efx->legacy_irq) {
		FUNC7(efx->legacy_irq);
		efx->legacy_irq_enabled = false;
	}
	if (channel->irq)
		FUNC7(channel->irq);

	/* Wait for any NAPI processing to complete */
	FUNC5(&channel->napi_str);

	/* Poll the channel */
	FUNC4(channel, channel->eventq_mask + 1);

	/* Ack the eventq. This may cause an interrupt to be generated
	 * when they are reenabled */
	FUNC1(channel);

	FUNC6(&channel->napi_str);
	if (efx->legacy_irq)
		efx->legacy_irq_enabled = true;
	FUNC3(efx);
}