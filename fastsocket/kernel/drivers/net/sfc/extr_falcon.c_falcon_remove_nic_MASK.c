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
struct falcon_nic_data {int /*<<< orphan*/ * pci_dev2; } ;
struct falcon_board {int /*<<< orphan*/  i2c_adap; TYPE_1__* type; } ;
struct efx_nic {struct falcon_nic_data* nic_data; int /*<<< orphan*/  irq_status; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* fini ) (struct efx_nic*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  RESET_TYPE_ALL ; 
 int /*<<< orphan*/  FUNC1 (struct efx_nic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct efx_nic*,int /*<<< orphan*/ *) ; 
 struct falcon_board* FUNC3 (struct efx_nic*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct falcon_nic_data*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct efx_nic*) ; 

__attribute__((used)) static void FUNC9(struct efx_nic *efx)
{
	struct falcon_nic_data *nic_data = efx->nic_data;
	struct falcon_board *board = FUNC3(efx);
	int rc;

	board->type->fini(efx);

	/* Remove I2C adapter and clear it in preparation for a retry */
	rc = FUNC4(&board->i2c_adap);
	FUNC0(rc);
	FUNC6(&board->i2c_adap, 0, sizeof(board->i2c_adap));

	FUNC2(efx, &efx->irq_status);

	FUNC1(efx, RESET_TYPE_ALL);

	/* Release the second function after the reset */
	if (nic_data->pci_dev2) {
		FUNC7(nic_data->pci_dev2);
		nic_data->pci_dev2 = NULL;
	}

	/* Tear down the private nic state */
	FUNC5(efx->nic_data);
	efx->nic_data = NULL;
}