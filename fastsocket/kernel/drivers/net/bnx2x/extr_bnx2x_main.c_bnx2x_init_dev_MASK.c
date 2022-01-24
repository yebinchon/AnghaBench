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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct pci_dev {int /*<<< orphan*/  enable_cnt; int /*<<< orphan*/  devfn; int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; int /*<<< orphan*/  pm_cap; } ;
struct net_device {int features; int vlan_features; int /*<<< orphan*/ * dcbnl_ops; int /*<<< orphan*/ * netdev_ops; int /*<<< orphan*/  watchdog_timeo; int /*<<< orphan*/  irq; int /*<<< orphan*/  mem_end; int /*<<< orphan*/  mem_start; int /*<<< orphan*/  base_addr; } ;
struct TYPE_2__ {int mode_support; int /*<<< orphan*/  mdio_write; int /*<<< orphan*/  mdio_read; struct net_device* dev; scalar_t__ mmds; int /*<<< orphan*/  prtad; } ;
struct bnx2x {int flags; TYPE_1__ mdio; struct pci_dev* pdev; int /*<<< orphan*/  pf_num; int /*<<< orphan*/  regview; int /*<<< orphan*/  pm_cap; struct net_device* dev; } ;

/* Variables and functions */
 unsigned long BCM57710 ; 
 unsigned long BCM57711 ; 
 unsigned long BCM57711E ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DRV_MODULE_NAME ; 
 int EIO ; 
 int ENODEV ; 
 int ENOMEM ; 
 int IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (struct bnx2x*) ; 
 int MDIO_EMULATE_C22 ; 
 int /*<<< orphan*/  MDIO_PRTAD_NONE ; 
 int MDIO_SUPPORTS_C45 ; 
 int ME_REG_ABS_PF_NUM ; 
 int ME_REG_ABS_PF_NUM_SHIFT ; 
 int NETIF_F_HIGHDMA ; 
 int NETIF_F_HW_VLAN_RX ; 
 int NETIF_F_HW_VLAN_TX ; 
 int NETIF_F_IPV6_CSUM ; 
 int NETIF_F_IP_CSUM ; 
 int NETIF_F_RXHASH ; 
 int NETIF_F_SG ; 
 int NETIF_F_TSO ; 
 int NETIF_F_TSO6 ; 
 int NETIF_F_TSO_ECN ; 
 int /*<<< orphan*/  PCICFG_GRC_ADDRESS ; 
 int /*<<< orphan*/  PCICFG_ME_REGISTER ; 
 int PCICFG_REVESION_ID_ERROR_VAL ; 
 int PCICFG_REVESION_ID_MASK ; 
 int /*<<< orphan*/  PCICFG_REVISION_ID_OFFSET ; 
 int /*<<< orphan*/  PCICFG_VENDOR_ID_OFFSET ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PGLUE_B_REG_INTERNAL_PFID_ENABLE_TARGET_READ ; 
 int /*<<< orphan*/  PXP2_REG_PGL_ADDR_88_F0 ; 
 int /*<<< orphan*/  PXP2_REG_PGL_ADDR_88_F1 ; 
 int /*<<< orphan*/  PXP2_REG_PGL_ADDR_8C_F0 ; 
 int /*<<< orphan*/  PXP2_REG_PGL_ADDR_8C_F1 ; 
 int /*<<< orphan*/  PXP2_REG_PGL_ADDR_90_F0 ; 
 int /*<<< orphan*/  PXP2_REG_PGL_ADDR_90_F1 ; 
 int /*<<< orphan*/  PXP2_REG_PGL_ADDR_94_F0 ; 
 int /*<<< orphan*/  PXP2_REG_PGL_ADDR_94_F1 ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TX_TIMEOUT ; 
 int USING_DAC_FLAG ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bnx2x_dcbnl_ops ; 
 int /*<<< orphan*/  bnx2x_mdio_read ; 
 int /*<<< orphan*/  bnx2x_mdio_write ; 
 int /*<<< orphan*/  bnx2x_netdev_ops ; 
 int FUNC6 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC7 (struct bnx2x*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 int FUNC10 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC14 (struct pci_dev*) ; 
 int FUNC15 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC20 (struct pci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC22 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (char*) ; 

__attribute__((used)) static int FUNC24(struct bnx2x *bp, struct pci_dev *pdev,
			  struct net_device *dev, unsigned long board_type)
{
	int rc;
	u32 pci_cfg_dword;
	bool chip_is_e1x = (board_type == BCM57710 ||
			    board_type == BCM57711 ||
			    board_type == BCM57711E);

	FUNC4(dev, &pdev->dev);

	bp->dev = dev;
	bp->pdev = pdev;

	rc = FUNC10(pdev);
	if (rc) {
		FUNC8(&bp->pdev->dev,
			"Cannot enable PCI device, aborting\n");
		goto err_out;
	}

	if (!(FUNC17(pdev, 0) & IORESOURCE_MEM)) {
		FUNC8(&bp->pdev->dev,
			"Cannot find PCI device base address, aborting\n");
		rc = -ENODEV;
		goto err_out_disable;
	}

	if (FUNC1(bp) && !(FUNC17(pdev, 2) & IORESOURCE_MEM)) {
		FUNC8(&bp->pdev->dev, "Cannot find second PCI device base address, aborting\n");
		rc = -ENODEV;
		goto err_out_disable;
	}

	FUNC13(pdev, PCICFG_REVISION_ID_OFFSET, &pci_cfg_dword);
	if ((pci_cfg_dword & PCICFG_REVESION_ID_MASK) ==
	    PCICFG_REVESION_ID_ERROR_VAL) {
		FUNC23("PCI device error, probably due to fan failure, aborting\n");
		rc = -ENODEV;
		goto err_out_disable;
	}

	if (FUNC5(&pdev->enable_cnt) == 1) {
		rc = FUNC15(pdev, DRV_MODULE_NAME);
		if (rc) {
			FUNC8(&bp->pdev->dev,
				"Cannot obtain PCI resources, aborting\n");
			goto err_out_disable;
		}

		FUNC21(pdev);
		FUNC19(pdev);
	}

	if (FUNC1(bp)) {
		bp->pm_cap = pdev->pm_cap;
		if (bp->pm_cap == 0) {
			FUNC8(&bp->pdev->dev,
				"Cannot find power management capability, aborting\n");
			rc = -EIO;
			goto err_out_release;
		}
	}

	if (!FUNC12(pdev)) {
		FUNC8(&bp->pdev->dev, "Not PCI Express, aborting\n");
		rc = -EIO;
		goto err_out_release;
	}

	rc = FUNC6(bp);
	if (rc)
		goto err_out_release;

	dev->mem_start = FUNC18(pdev, 0);
	dev->base_addr = dev->mem_start;
	dev->mem_end = FUNC16(pdev, 0);

	dev->irq = pdev->irq;

	bp->regview = FUNC11(pdev, 0);
	if (!bp->regview) {
		FUNC8(&bp->pdev->dev,
			"Cannot map register space, aborting\n");
		rc = -ENOMEM;
		goto err_out_release;
	}

	/* In E1/E1H use pci device function given by kernel.
	 * In E2/E3 read physical function from ME register since these chips
	 * support Physical Device Assignment where kernel BDF maybe arbitrary
	 * (depending on hypervisor).
	 */
	if (chip_is_e1x) {
		bp->pf_num = FUNC2(pdev->devfn);
	} else {
		/* chip is E2/3*/
		FUNC13(bp->pdev,
				      PCICFG_ME_REGISTER, &pci_cfg_dword);
		bp->pf_num = (u8)((pci_cfg_dword & ME_REG_ABS_PF_NUM) >>
				  ME_REG_ABS_PF_NUM_SHIFT);
	}
	FUNC0("me reg PF num: %d\n", bp->pf_num);

	/* clean indirect addresses */
	FUNC22(bp->pdev, PCICFG_GRC_ADDRESS,
			       PCICFG_VENDOR_ID_OFFSET);
	/*
	 * Clean the following indirect addresses for all functions since it
	 * is not used by the driver.
	 */
	if (FUNC1(bp)) {
		FUNC3(bp, PXP2_REG_PGL_ADDR_88_F0, 0);
		FUNC3(bp, PXP2_REG_PGL_ADDR_8C_F0, 0);
		FUNC3(bp, PXP2_REG_PGL_ADDR_90_F0, 0);
		FUNC3(bp, PXP2_REG_PGL_ADDR_94_F0, 0);

		if (chip_is_e1x) {
			FUNC3(bp, PXP2_REG_PGL_ADDR_88_F1, 0);
			FUNC3(bp, PXP2_REG_PGL_ADDR_8C_F1, 0);
			FUNC3(bp, PXP2_REG_PGL_ADDR_90_F1, 0);
			FUNC3(bp, PXP2_REG_PGL_ADDR_94_F1, 0);
		}

		/* Enable internal target-read (in case we are probed after PF
		 * FLR). Must be done prior to any BAR read access. Only for
		 * 57712 and up
		 */
		if (!chip_is_e1x)
			FUNC3(bp,
			       PGLUE_B_REG_INTERNAL_PFID_ENABLE_TARGET_READ, 1);
	}

	dev->watchdog_timeo = TX_TIMEOUT;

	dev->netdev_ops = &bnx2x_netdev_ops;
	FUNC7(bp, dev);
	dev->features |= NETIF_F_SG;
	dev->features |= NETIF_F_IP_CSUM | NETIF_F_IPV6_CSUM | NETIF_F_RXHASH;
	if (bp->flags & USING_DAC_FLAG)
		dev->features |= NETIF_F_HIGHDMA;
	dev->features |= (NETIF_F_TSO | NETIF_F_TSO_ECN);
	dev->features |= NETIF_F_TSO6;
#if defined(BCM_VLAN)
	dev->features |= (NETIF_F_HW_VLAN_TX | NETIF_F_HW_VLAN_RX);

	dev->vlan_features |= NETIF_F_SG;
	dev->vlan_features |= NETIF_F_IP_CSUM | NETIF_F_IPV6_CSUM;
	if (bp->flags & USING_DAC_FLAG)
		dev->vlan_features |= NETIF_F_HIGHDMA;
	dev->vlan_features |= (NETIF_F_TSO | NETIF_F_TSO_ECN);
	dev->vlan_features |= NETIF_F_TSO6;
#endif

#ifdef BCM_DCBNL
	dev->dcbnl_ops = &bnx2x_dcbnl_ops;
#endif

	/* get_port_hwinfo() will set prtad and mmds properly */
	bp->mdio.prtad = MDIO_PRTAD_NONE;
	bp->mdio.mmds = 0;
	bp->mdio.mode_support = MDIO_SUPPORTS_C45 | MDIO_EMULATE_C22;
	bp->mdio.dev = dev;
	bp->mdio.mdio_read = bnx2x_mdio_read;
	bp->mdio.mdio_write = bnx2x_mdio_write;

	return 0;

err_out_release:
	if (FUNC5(&pdev->enable_cnt) == 1)
		FUNC14(pdev);

err_out_disable:
	FUNC9(pdev);
	FUNC20(pdev, NULL);

err_out:
	return rc;
}