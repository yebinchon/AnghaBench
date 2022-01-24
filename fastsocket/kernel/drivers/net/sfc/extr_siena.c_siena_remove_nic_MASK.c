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
struct efx_nic {int /*<<< orphan*/ * nic_data; int /*<<< orphan*/  irq_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  RESET_TYPE_ALL ; 
 int /*<<< orphan*/  FUNC0 (struct efx_nic*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC2 (struct efx_nic*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct efx_nic*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct efx_nic *efx)
{
	FUNC1(efx);

	FUNC2(efx, &efx->irq_status);

	FUNC4(efx, RESET_TYPE_ALL);

	/* Relinquish the device back to the BMC */
	FUNC0(efx, false, NULL);

	/* Tear down the private nic state */
	FUNC3(efx->nic_data);
	efx->nic_data = NULL;
}