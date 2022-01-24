#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct efx_nic {int port_initialized; int /*<<< orphan*/  mac_lock; TYPE_2__* type; int /*<<< orphan*/  net_dev; TYPE_1__* phy_op; } ;
typedef  enum reset_type { ____Placeholder_reset_type } reset_type ;
struct TYPE_4__ {int (* init ) (struct efx_nic*) ;int /*<<< orphan*/  (* reconfigure_mac ) (struct efx_nic*) ;} ;
struct TYPE_3__ {int (* init ) (struct efx_nic*) ;scalar_t__ (* reconfigure ) (struct efx_nic*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct efx_nic*) ; 
 int RESET_TYPE_INVISIBLE ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC1 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC2 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC3 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC4 (struct efx_nic*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (struct efx_nic*) ; 
 int FUNC8 (struct efx_nic*) ; 
 scalar_t__ FUNC9 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC10 (struct efx_nic*) ; 

int FUNC11(struct efx_nic *efx, enum reset_type method, bool ok)
{
	int rc;

	FUNC0(efx);

	rc = efx->type->init(efx);
	if (rc) {
		FUNC6(efx, drv, efx->net_dev, "failed to initialise NIC\n");
		goto fail;
	}

	if (!ok)
		goto fail;

	if (efx->port_initialized && method != RESET_TYPE_INVISIBLE) {
		rc = efx->phy_op->init(efx);
		if (rc)
			goto fail;
		if (efx->phy_op->reconfigure(efx))
			FUNC6(efx, drv, efx->net_dev,
				  "could not restore PHY settings\n");
	}

	efx->type->reconfigure_mac(efx);

	FUNC4(efx, false);
	FUNC1(efx);
	FUNC2(efx);

	FUNC5(&efx->mac_lock);

	FUNC3(efx);

	return 0;

fail:
	efx->port_initialized = false;
 
	FUNC5(&efx->mac_lock);

	return rc;
}