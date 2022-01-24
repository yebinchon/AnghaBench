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
struct pci_dev {int /*<<< orphan*/  enable_cnt; } ;
struct net_device {int dummy; } ;
struct bnx2x {int flags; scalar_t__ doorbells; scalar_t__ regview; int /*<<< orphan*/  wol; int /*<<< orphan*/  sp_rtnl_task; int /*<<< orphan*/  fip_mac; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int BC_SUPPORTS_RMMOD_CMD ; 
 int /*<<< orphan*/  FUNC0 (struct bnx2x*) ; 
 int /*<<< orphan*/  DRV_MSG_CODE_RMMOD ; 
 scalar_t__ FUNC1 (struct bnx2x*) ; 
 scalar_t__ FUNC2 (struct bnx2x*) ; 
 int /*<<< orphan*/  NETDEV_HW_ADDR_T_SAN ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*) ; 
 int /*<<< orphan*/  PCI_D0 ; 
 int /*<<< orphan*/  PCI_D3hot ; 
 scalar_t__ SYSTEM_POWER_OFF ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC7 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC8 (struct bnx2x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC10 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC11 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC19 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC20 (struct pci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 () ; 
 scalar_t__ system_state ; 
 int /*<<< orphan*/  FUNC25 (struct net_device*) ; 

__attribute__((used)) static void FUNC26(struct pci_dev *pdev,
			   struct net_device *dev,
			   struct bnx2x *bp,
			   bool remove_netdev)
{
	/* Delete storage MAC address */
	if (!FUNC3(bp)) {
		FUNC23();
		FUNC14(bp->dev, bp->fip_mac, NETDEV_HW_ADDR_T_SAN);
		FUNC24();
	}

#ifdef BCM_DCBNL
	/* Delete app tlvs from dcbnl */
	bnx2x_dcbnl_update_applist(bp, true);
#endif

	if (FUNC1(bp) &&
	    !FUNC0(bp) &&
	    (bp->flags & BC_SUPPORTS_RMMOD_CMD))
		FUNC8(bp, DRV_MSG_CODE_RMMOD, 0);

	/* Close the interface - either directly or implicitly */
	if (remove_netdev) {
		FUNC25(dev);
	} else {
		FUNC23();
		FUNC15(dev);
		FUNC24();
	}

	FUNC9(bp);

	/* Power on: we can't let PCI layer write to us while we are in D3 */
	if (FUNC1(bp))
		FUNC11(bp, PCI_D0);

	/* Disable MSI/MSI-X */
	FUNC6(bp);

	/* Power off */
	if (FUNC1(bp))
		FUNC11(bp, PCI_D3hot);

	/* Make sure RESET task is not scheduled before continuing */
	FUNC13(&bp->sp_rtnl_task);

	/* send message via vfpf channel to release the resources of this vf */
	if (FUNC2(bp))
		FUNC12(bp);

	/* Assumes no further PCIe PM changes will occur */
	if (system_state == SYSTEM_POWER_OFF) {
		FUNC22(pdev, bp->wol);
		FUNC21(pdev, PCI_D3hot);
	}

	if (bp->regview)
		FUNC17(bp->regview);

	/* for vf doorbells are part of the regview and were unmapped along with
	 * it. FW is only loaded by PF.
	 */
	if (FUNC1(bp)) {
		if (bp->doorbells)
			FUNC17(bp->doorbells);

		FUNC10(bp);
	}
	FUNC7(bp);

	if (remove_netdev)
		FUNC16(dev);

	if (FUNC4(&pdev->enable_cnt) == 1)
		FUNC19(pdev);

	FUNC18(pdev);
	FUNC20(pdev, NULL);
}