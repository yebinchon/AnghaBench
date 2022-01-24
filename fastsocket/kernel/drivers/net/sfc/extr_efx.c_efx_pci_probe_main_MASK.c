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
struct efx_nic {TYPE_1__* type; int /*<<< orphan*/  net_dev; } ;
struct TYPE_2__ {int (* init ) (struct efx_nic*) ;int /*<<< orphan*/  (* fini ) (struct efx_nic*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC1 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC2 (struct efx_nic*) ; 
 int FUNC3 (struct efx_nic*) ; 
 int FUNC4 (struct efx_nic*) ; 
 int FUNC5 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC6 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC7 (struct efx_nic*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  probe ; 
 int FUNC9 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC10 (struct efx_nic*) ; 

__attribute__((used)) static int FUNC11(struct efx_nic *efx)
{
	int rc;

	/* Do start-of-day initialisation */
	rc = FUNC5(efx);
	if (rc)
		goto fail1;

	FUNC2(efx);

	rc = efx->type->init(efx);
	if (rc) {
		FUNC8(efx, probe, efx->net_dev,
			  "failed to initialise NIC\n");
		goto fail3;
	}

	rc = FUNC3(efx);
	if (rc) {
		FUNC8(efx, probe, efx->net_dev,
			  "failed to initialise port\n");
		goto fail4;
	}

	rc = FUNC4(efx);
	if (rc)
		goto fail5;
	FUNC7(efx, false);

	return 0;

 fail5:
	FUNC1(efx);
 fail4:
	efx->type->fini(efx);
 fail3:
	FUNC0(efx);
	FUNC6(efx);
 fail1:
	return rc;
}