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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC1 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC2 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC3 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC4 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC5 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC6 (struct efx_nic*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*) ; 
 struct efx_nic* FUNC11 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 

__attribute__((used)) static void FUNC15(struct pci_dev *pci_dev)
{
	struct efx_nic *efx;

	efx = FUNC11(pci_dev);
	if (!efx)
		return;

	/* Mark the NIC as fini, then stop the interface */
	FUNC13();
	FUNC0(efx->net_dev);
	FUNC6(efx, false);
	FUNC14();

	FUNC5(efx);
	FUNC7(efx);

	FUNC3(efx);

	FUNC4(efx);

	FUNC1(efx);
	FUNC9(efx, drv, efx->net_dev, "shutdown successful\n");

	FUNC2(efx);
	FUNC12(pci_dev, NULL);
	FUNC8(efx->net_dev);

	FUNC10(pci_dev);
}