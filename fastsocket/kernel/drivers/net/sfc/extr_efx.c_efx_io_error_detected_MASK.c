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
struct efx_nic {scalar_t__ state; scalar_t__ reset_pending; } ;
typedef  int /*<<< orphan*/  pci_ers_result_t ;
typedef  enum pci_channel_state { ____Placeholder_pci_channel_state } pci_channel_state ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_ERS_RESULT_DISCONNECT ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_NEED_RESET ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_RECOVERED ; 
 scalar_t__ STATE_DISABLED ; 
 scalar_t__ STATE_RECOVERY ; 
 int /*<<< orphan*/  FUNC0 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC1 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC2 (struct efx_nic*,int) ; 
 int pci_channel_io_perm_failure ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 struct efx_nic* FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static pci_ers_result_t FUNC7(struct pci_dev *pdev,
					      enum pci_channel_state state)
{
	pci_ers_result_t status = PCI_ERS_RESULT_RECOVERED;
	struct efx_nic *efx = FUNC4(pdev);

	if (state == pci_channel_io_perm_failure)
		return PCI_ERS_RESULT_DISCONNECT;

	FUNC5();

	if (efx->state != STATE_DISABLED) {
		efx->state = STATE_RECOVERY;
		efx->reset_pending = 0;

		FUNC0(efx);

		FUNC1(efx);
		FUNC2(efx, false);

		status = PCI_ERS_RESULT_NEED_RESET;
	} else {
		/* If the interface is disabled we don't want to do anything
		 * with it.
		 */
		status = PCI_ERS_RESULT_RECOVERED;
	}

	FUNC6();

	FUNC3(pdev);

	return status;
}