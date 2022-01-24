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
struct efx_nic {int /*<<< orphan*/  net_dev; } ;
typedef  int /*<<< orphan*/  pci_ers_result_t ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_ERS_RESULT_DISCONNECT ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_RECOVERED ; 
 int /*<<< orphan*/  hw ; 
 int /*<<< orphan*/  FUNC0 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (struct pci_dev*) ; 
 scalar_t__ FUNC2 (struct pci_dev*) ; 
 struct efx_nic* FUNC3 (struct pci_dev*) ; 

__attribute__((used)) static pci_ers_result_t FUNC4(struct pci_dev *pdev)
{
	struct efx_nic *efx = FUNC3(pdev);
	pci_ers_result_t status = PCI_ERS_RESULT_RECOVERED;
	int rc;

	if (FUNC2(pdev)) {
		FUNC0(efx, hw, efx->net_dev,
			  "Cannot re-enable PCI device after reset.\n");
		status =  PCI_ERS_RESULT_DISCONNECT;
	}

	rc = FUNC1(pdev);
	if (rc) {
		FUNC0(efx, hw, efx->net_dev,
		"pci_cleanup_aer_uncorrect_error_status failed (%d)\n", rc);
		/* Non-fatal error. Continue. */
	}

	return status;
}