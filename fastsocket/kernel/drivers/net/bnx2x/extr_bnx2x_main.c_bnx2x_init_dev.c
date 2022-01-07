
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct pci_dev {int enable_cnt; int devfn; int dev; int irq; int pm_cap; } ;
struct net_device {int features; int vlan_features; int * dcbnl_ops; int * netdev_ops; int watchdog_timeo; int irq; int mem_end; int mem_start; int base_addr; } ;
struct TYPE_2__ {int mode_support; int mdio_write; int mdio_read; struct net_device* dev; scalar_t__ mmds; int prtad; } ;
struct bnx2x {int flags; TYPE_1__ mdio; struct pci_dev* pdev; int pf_num; int regview; int pm_cap; struct net_device* dev; } ;


 unsigned long BCM57710 ;
 unsigned long BCM57711 ;
 unsigned long BCM57711E ;
 int BNX2X_DEV_INFO (char*,int ) ;
 int DRV_MODULE_NAME ;
 int EIO ;
 int ENODEV ;
 int ENOMEM ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_PF (struct bnx2x*) ;
 int MDIO_EMULATE_C22 ;
 int MDIO_PRTAD_NONE ;
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
 int PCICFG_GRC_ADDRESS ;
 int PCICFG_ME_REGISTER ;
 int PCICFG_REVESION_ID_ERROR_VAL ;
 int PCICFG_REVESION_ID_MASK ;
 int PCICFG_REVISION_ID_OFFSET ;
 int PCICFG_VENDOR_ID_OFFSET ;
 int PCI_FUNC (int ) ;
 int PGLUE_B_REG_INTERNAL_PFID_ENABLE_TARGET_READ ;
 int PXP2_REG_PGL_ADDR_88_F0 ;
 int PXP2_REG_PGL_ADDR_88_F1 ;
 int PXP2_REG_PGL_ADDR_8C_F0 ;
 int PXP2_REG_PGL_ADDR_8C_F1 ;
 int PXP2_REG_PGL_ADDR_90_F0 ;
 int PXP2_REG_PGL_ADDR_90_F1 ;
 int PXP2_REG_PGL_ADDR_94_F0 ;
 int PXP2_REG_PGL_ADDR_94_F1 ;
 int REG_WR (struct bnx2x*,int ,int) ;
 int SET_NETDEV_DEV (struct net_device*,int *) ;
 int TX_TIMEOUT ;
 int USING_DAC_FLAG ;
 int atomic_read (int *) ;
 int bnx2x_dcbnl_ops ;
 int bnx2x_mdio_read ;
 int bnx2x_mdio_write ;
 int bnx2x_netdev_ops ;
 int bnx2x_set_coherency_mask (struct bnx2x*) ;
 int bnx2x_set_ethtool_ops (struct bnx2x*,struct net_device*) ;
 int dev_err (int *,char*) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_ioremap_bar (struct pci_dev*,int ) ;
 int pci_is_pcie (struct pci_dev*) ;
 int pci_read_config_dword (struct pci_dev*,int ,int*) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_request_regions (struct pci_dev*,int ) ;
 int pci_resource_end (struct pci_dev*,int ) ;
 int pci_resource_flags (struct pci_dev*,int) ;
 int pci_resource_start (struct pci_dev*,int ) ;
 int pci_save_state (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,int *) ;
 int pci_set_master (struct pci_dev*) ;
 int pci_write_config_dword (struct pci_dev*,int ,int ) ;
 int pr_err (char*) ;

__attribute__((used)) static int bnx2x_init_dev(struct bnx2x *bp, struct pci_dev *pdev,
     struct net_device *dev, unsigned long board_type)
{
 int rc;
 u32 pci_cfg_dword;
 bool chip_is_e1x = (board_type == BCM57710 ||
       board_type == BCM57711 ||
       board_type == BCM57711E);

 SET_NETDEV_DEV(dev, &pdev->dev);

 bp->dev = dev;
 bp->pdev = pdev;

 rc = pci_enable_device(pdev);
 if (rc) {
  dev_err(&bp->pdev->dev,
   "Cannot enable PCI device, aborting\n");
  goto err_out;
 }

 if (!(pci_resource_flags(pdev, 0) & IORESOURCE_MEM)) {
  dev_err(&bp->pdev->dev,
   "Cannot find PCI device base address, aborting\n");
  rc = -ENODEV;
  goto err_out_disable;
 }

 if (IS_PF(bp) && !(pci_resource_flags(pdev, 2) & IORESOURCE_MEM)) {
  dev_err(&bp->pdev->dev, "Cannot find second PCI device base address, aborting\n");
  rc = -ENODEV;
  goto err_out_disable;
 }

 pci_read_config_dword(pdev, PCICFG_REVISION_ID_OFFSET, &pci_cfg_dword);
 if ((pci_cfg_dword & PCICFG_REVESION_ID_MASK) ==
     PCICFG_REVESION_ID_ERROR_VAL) {
  pr_err("PCI device error, probably due to fan failure, aborting\n");
  rc = -ENODEV;
  goto err_out_disable;
 }

 if (atomic_read(&pdev->enable_cnt) == 1) {
  rc = pci_request_regions(pdev, DRV_MODULE_NAME);
  if (rc) {
   dev_err(&bp->pdev->dev,
    "Cannot obtain PCI resources, aborting\n");
   goto err_out_disable;
  }

  pci_set_master(pdev);
  pci_save_state(pdev);
 }

 if (IS_PF(bp)) {
  bp->pm_cap = pdev->pm_cap;
  if (bp->pm_cap == 0) {
   dev_err(&bp->pdev->dev,
    "Cannot find power management capability, aborting\n");
   rc = -EIO;
   goto err_out_release;
  }
 }

 if (!pci_is_pcie(pdev)) {
  dev_err(&bp->pdev->dev, "Not PCI Express, aborting\n");
  rc = -EIO;
  goto err_out_release;
 }

 rc = bnx2x_set_coherency_mask(bp);
 if (rc)
  goto err_out_release;

 dev->mem_start = pci_resource_start(pdev, 0);
 dev->base_addr = dev->mem_start;
 dev->mem_end = pci_resource_end(pdev, 0);

 dev->irq = pdev->irq;

 bp->regview = pci_ioremap_bar(pdev, 0);
 if (!bp->regview) {
  dev_err(&bp->pdev->dev,
   "Cannot map register space, aborting\n");
  rc = -ENOMEM;
  goto err_out_release;
 }






 if (chip_is_e1x) {
  bp->pf_num = PCI_FUNC(pdev->devfn);
 } else {

  pci_read_config_dword(bp->pdev,
          PCICFG_ME_REGISTER, &pci_cfg_dword);
  bp->pf_num = (u8)((pci_cfg_dword & ME_REG_ABS_PF_NUM) >>
      ME_REG_ABS_PF_NUM_SHIFT);
 }
 BNX2X_DEV_INFO("me reg PF num: %d\n", bp->pf_num);


 pci_write_config_dword(bp->pdev, PCICFG_GRC_ADDRESS,
          PCICFG_VENDOR_ID_OFFSET);




 if (IS_PF(bp)) {
  REG_WR(bp, PXP2_REG_PGL_ADDR_88_F0, 0);
  REG_WR(bp, PXP2_REG_PGL_ADDR_8C_F0, 0);
  REG_WR(bp, PXP2_REG_PGL_ADDR_90_F0, 0);
  REG_WR(bp, PXP2_REG_PGL_ADDR_94_F0, 0);

  if (chip_is_e1x) {
   REG_WR(bp, PXP2_REG_PGL_ADDR_88_F1, 0);
   REG_WR(bp, PXP2_REG_PGL_ADDR_8C_F1, 0);
   REG_WR(bp, PXP2_REG_PGL_ADDR_90_F1, 0);
   REG_WR(bp, PXP2_REG_PGL_ADDR_94_F1, 0);
  }





  if (!chip_is_e1x)
   REG_WR(bp,
          PGLUE_B_REG_INTERNAL_PFID_ENABLE_TARGET_READ, 1);
 }

 dev->watchdog_timeo = TX_TIMEOUT;

 dev->netdev_ops = &bnx2x_netdev_ops;
 bnx2x_set_ethtool_ops(bp, dev);
 dev->features |= NETIF_F_SG;
 dev->features |= NETIF_F_IP_CSUM | NETIF_F_IPV6_CSUM | NETIF_F_RXHASH;
 if (bp->flags & USING_DAC_FLAG)
  dev->features |= NETIF_F_HIGHDMA;
 dev->features |= (NETIF_F_TSO | NETIF_F_TSO_ECN);
 dev->features |= NETIF_F_TSO6;
 bp->mdio.prtad = MDIO_PRTAD_NONE;
 bp->mdio.mmds = 0;
 bp->mdio.mode_support = MDIO_SUPPORTS_C45 | MDIO_EMULATE_C22;
 bp->mdio.dev = dev;
 bp->mdio.mdio_read = bnx2x_mdio_read;
 bp->mdio.mdio_write = bnx2x_mdio_write;

 return 0;

err_out_release:
 if (atomic_read(&pdev->enable_cnt) == 1)
  pci_release_regions(pdev);

err_out_disable:
 pci_disable_device(pdev);
 pci_set_drvdata(pdev, ((void*)0));

err_out:
 return rc;
}
