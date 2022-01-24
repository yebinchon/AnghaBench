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
struct efx_mcdi_iface {scalar_t__ mode; int resprc; int /*<<< orphan*/  iface_lock; int /*<<< orphan*/  credits; scalar_t__ resplen; } ;

/* Variables and functions */
 scalar_t__ MCDI_MODE_EVENTS ; 
 int MCDI_STATUS_DELAY_COUNT ; 
 int /*<<< orphan*/  MCDI_STATUS_DELAY_US ; 
 int /*<<< orphan*/  RESET_TYPE_MC_FAILURE ; 
 struct efx_mcdi_iface* FUNC0 (struct efx_nic*) ; 
 scalar_t__ FUNC1 (struct efx_mcdi_iface*) ; 
 scalar_t__ FUNC2 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC3 (struct efx_nic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct efx_nic *efx, int rc)
{
	struct efx_mcdi_iface *mcdi = FUNC0(efx);

	/* If there is an outstanding MCDI request, it has been terminated
	 * either by a BADASSERT or REBOOT event. If the mcdi interface is
	 * in polled mode, then do nothing because the MC reboot handler will
	 * set the header correctly. However, if the mcdi interface is waiting
	 * for a CMDDONE event it won't receive it [and since all MCDI events
	 * are sent to the same queue, we can't be racing with
	 * efx_mcdi_ev_cpl()]
	 *
	 * There's a race here with efx_mcdi_rpc(), because we might receive
	 * a REBOOT event *before* the request has been copied out. In polled
	 * mode (during startup) this is irrelevant, because efx_mcdi_complete()
	 * is ignored. In event mode, this condition is just an edge-case of
	 * receiving a REBOOT event after posting the MCDI request. Did the mc
	 * reboot before or after the copyout? The best we can do always is
	 * just return failure.
	 */
	FUNC4(&mcdi->iface_lock);
	if (FUNC1(mcdi)) {
		if (mcdi->mode == MCDI_MODE_EVENTS) {
			mcdi->resprc = rc;
			mcdi->resplen = 0;
			++mcdi->credits;
		}
	} else {
		int count;

		/* Nobody was waiting for an MCDI request, so trigger a reset */
		FUNC3(efx, RESET_TYPE_MC_FAILURE);

		/* Consume the status word since efx_mcdi_rpc_finish() won't */
		for (count = 0; count < MCDI_STATUS_DELAY_COUNT; ++count) {
			if (FUNC2(efx))
				break;
			FUNC6(MCDI_STATUS_DELAY_US);
		}
	}

	FUNC5(&mcdi->iface_lock);
}