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
struct efx_nic {int dummy; } ;
struct efx_mcdi_iface {scalar_t__ mode; } ;

/* Variables and functions */
 scalar_t__ EFX_REV_SIENA_A0 ; 
 scalar_t__ MCDI_MODE_EVENTS ; 
 struct efx_mcdi_iface* FUNC0 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC1 (struct efx_mcdi_iface*) ; 
 int /*<<< orphan*/  FUNC2 (struct efx_mcdi_iface*) ; 
 scalar_t__ FUNC3 (struct efx_nic*) ; 

void FUNC4(struct efx_nic *efx)
{
	struct efx_mcdi_iface *mcdi;

	if (FUNC3(efx) < EFX_REV_SIENA_A0)
		return;

	mcdi = FUNC0(efx);

	if (mcdi->mode == MCDI_MODE_EVENTS)
		return;

	/* We can't switch from polled to event completion in the middle of a
	 * request, because the completion method is specified in the request.
	 * So acquire the interface to serialise the requestors. We don't need
	 * to acquire the iface_lock to change the mode here, but we do need a
	 * write memory barrier ensure that efx_mcdi_rpc() sees it, which
	 * efx_mcdi_acquire() provides.
	 */
	FUNC1(mcdi);
	mcdi->mode = MCDI_MODE_EVENTS;
	FUNC2(mcdi);
}