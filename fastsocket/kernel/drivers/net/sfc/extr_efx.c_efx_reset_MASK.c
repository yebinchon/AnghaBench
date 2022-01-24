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
struct efx_nic {int reset_pending; int /*<<< orphan*/  net_dev; int /*<<< orphan*/  state; int /*<<< orphan*/  pci_dev; TYPE_1__* type; } ;
typedef  enum reset_type { ____Placeholder_reset_type } reset_type ;
struct TYPE_2__ {int (* reset ) (struct efx_nic*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int RESET_TYPE_DISABLE ; 
 int RESET_TYPE_RECOVER_OR_DISABLE ; 
 int /*<<< orphan*/  STATE_DISABLED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC2 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC3 (struct efx_nic*,int) ; 
 int FUNC4 (struct efx_nic*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (struct efx_nic*,int) ; 

int FUNC11(struct efx_nic *efx, enum reset_type method)
{
	int rc, rc2;
	bool disabled;

	FUNC8(efx, drv, efx->net_dev, "resetting (%s)\n",
		   FUNC0(method));

	FUNC2(efx);
	FUNC3(efx, method);

	rc = efx->type->reset(efx, method);
	if (rc) {
		FUNC7(efx, drv, efx->net_dev, "failed to reset hardware\n");
		goto out;
	}

	/* Clear flags for the scopes we covered.  We assume the NIC and
	 * driver are now quiescent so that there is no race here.
	 */
	efx->reset_pending &= -(1 << (method + 1));

	/* Reinitialise bus-mastering, which may have been turned off before
	 * the reset was scheduled. This is still appropriate, even in the
	 * RESET_TYPE_DISABLE since this driver generally assumes the hardware
	 * can respond to requests. */
	FUNC9(efx->pci_dev);

out:
	/* Leave device stopped if necessary */
	disabled = rc ||
		method == RESET_TYPE_DISABLE ||
		method == RESET_TYPE_RECOVER_OR_DISABLE;
	rc2 = FUNC4(efx, method, !disabled);
	if (rc2) {
		disabled = true;
		if (!rc)
			rc = rc2;
	}

	if (disabled) {
		FUNC1(efx->net_dev);
		FUNC7(efx, drv, efx->net_dev, "has been disabled\n");
		efx->state = STATE_DISABLED;
	} else {
		FUNC5(efx, drv, efx->net_dev, "reset complete\n");
		FUNC6(efx->net_dev);
	}
	return rc;
}