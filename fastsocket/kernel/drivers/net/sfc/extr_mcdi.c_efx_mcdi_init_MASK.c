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
struct efx_mcdi_iface {int /*<<< orphan*/  mode; int /*<<< orphan*/  state; int /*<<< orphan*/  iface_lock; int /*<<< orphan*/  wq; } ;

/* Variables and functions */
 scalar_t__ EFX_REV_SIENA_A0 ; 
 int /*<<< orphan*/  MCDI_MODE_POLL ; 
 int /*<<< orphan*/  MCDI_STATE_QUIESCENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct efx_mcdi_iface* FUNC1 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC2 (struct efx_nic*) ; 
 scalar_t__ FUNC3 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct efx_nic *efx)
{
	struct efx_mcdi_iface *mcdi;

	if (FUNC3(efx) < EFX_REV_SIENA_A0)
		return;

	mcdi = FUNC1(efx);
	FUNC4(&mcdi->wq);
	FUNC5(&mcdi->iface_lock);
	FUNC0(&mcdi->state, MCDI_STATE_QUIESCENT);
	mcdi->mode = MCDI_MODE_POLL;

	(void) FUNC2(efx);
}