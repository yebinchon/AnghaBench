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
struct pci_dev {int dummy; } ;
struct efx_nic {scalar_t__ state; int /*<<< orphan*/  net_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  RESET_TYPE_ALL ; 
 scalar_t__ STATE_DISABLED ; 
 scalar_t__ STATE_READY ; 
 int FUNC0 (struct efx_nic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hw ; 
 int /*<<< orphan*/  FUNC1 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 struct efx_nic* FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void FUNC6(struct pci_dev *pdev)
{
	struct efx_nic *efx = FUNC3(pdev);
	int rc;

	FUNC4();

	if (efx->state == STATE_DISABLED)
		goto out;

	rc = FUNC0(efx, RESET_TYPE_ALL);
	if (rc) {
		FUNC2(efx, hw, efx->net_dev,
			  "efx_reset failed after PCI error (%d)\n", rc);
	} else {
		efx->state = STATE_READY;
		FUNC1(efx, hw, efx->net_dev,
			  "Done resetting and resuming IO after PCI error.\n");
	}

out:
	FUNC5();
}