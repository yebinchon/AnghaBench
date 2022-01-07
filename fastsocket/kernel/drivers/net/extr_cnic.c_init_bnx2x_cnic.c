
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct cnic_local {int close_conn; int arm_int; int ack_int; int disable_int_sync; int enable_int; int stop_cm; int start_cm; int free_resc; int alloc_resc; int setup_pgtbl; int stop_hw; int start_hw; int * cnic_ops; int chip_id; struct cnic_eth_dev* ethdev; } ;
struct cnic_eth_dev {int drv_state; scalar_t__ max_fcoe_conn; int iscsi_mac; int max_fcoe_exchanges; int max_iscsi_conn; int addr_drv_info_to_mcp; int chip_id; struct pci_dev* pdev; } ;
struct cnic_dev {scalar_t__ max_fcoe_conn; int mac_addr; int max_fcoe_exchanges; int max_iscsi_conn; int stats_addr; struct pci_dev* pcidev; struct cnic_local* cnic_priv; int submit_kwqes; int flags; } ;
struct bnx2x {struct cnic_eth_dev* (* cnic_probe ) (struct net_device*) ;} ;


 scalar_t__ BNX2X_CHIP_IS_E2_PLUS (struct bnx2x*) ;
 scalar_t__ BNX2X_FCOE_NUM_CONNECTIONS ;
 int CNIC_DRV_STATE_NO_ISCSI ;
 int CNIC_F_BNX2X_CLASS ;
 scalar_t__ CNIC_SUPPORTS_FCOE (struct bnx2x*) ;
 int cnic_ack_bnx2x_e2_msix ;
 int cnic_ack_bnx2x_msix ;
 int cnic_alloc_bnx2x_resc ;
 struct cnic_dev* cnic_alloc_dev (struct net_device*,struct pci_dev*) ;
 int cnic_arm_bnx2x_e2_msix ;
 int cnic_arm_bnx2x_msix ;
 int cnic_bnx2x_ops ;
 int cnic_close_bnx2x_conn ;
 int cnic_cm_init_bnx2x_hw ;
 int cnic_cm_stop_bnx2x_hw ;
 int cnic_disable_bnx2x_int_sync ;
 int cnic_enable_bnx2x_int ;
 int cnic_free_resc ;
 int cnic_setup_page_tbl_le ;
 int cnic_start_bnx2x_hw ;
 int cnic_stop_bnx2x_hw ;
 int cnic_submit_bnx2x_kwqes ;
 int dev_hold (struct net_device*) ;
 int dev_put (struct net_device*) ;
 int memcpy (int ,int ,int) ;
 struct bnx2x* netdev_priv (struct net_device*) ;
 int set_bit (int ,int *) ;
 struct cnic_eth_dev* stub1 (struct net_device*) ;

__attribute__((used)) static struct cnic_dev *init_bnx2x_cnic(struct net_device *dev)
{
 struct pci_dev *pdev;
 struct cnic_dev *cdev;
 struct cnic_local *cp;
 struct bnx2x *bp = netdev_priv(dev);
 struct cnic_eth_dev *ethdev = ((void*)0);

 if (bp->cnic_probe)
  ethdev = bp->cnic_probe(dev);

 if (!ethdev)
  return ((void*)0);

 pdev = ethdev->pdev;
 if (!pdev)
  return ((void*)0);

 dev_hold(dev);
 cdev = cnic_alloc_dev(dev, pdev);
 if (cdev == ((void*)0)) {
  dev_put(dev);
  return ((void*)0);
 }

 set_bit(CNIC_F_BNX2X_CLASS, &cdev->flags);
 cdev->submit_kwqes = cnic_submit_bnx2x_kwqes;

 cp = cdev->cnic_priv;
 cp->ethdev = ethdev;
 cdev->pcidev = pdev;
 cp->chip_id = ethdev->chip_id;

 cdev->stats_addr = ethdev->addr_drv_info_to_mcp;

 if (!(ethdev->drv_state & CNIC_DRV_STATE_NO_ISCSI))
  cdev->max_iscsi_conn = ethdev->max_iscsi_conn;
 if (CNIC_SUPPORTS_FCOE(bp)) {
  cdev->max_fcoe_conn = ethdev->max_fcoe_conn;
  cdev->max_fcoe_exchanges = ethdev->max_fcoe_exchanges;
 }

 if (cdev->max_fcoe_conn > BNX2X_FCOE_NUM_CONNECTIONS)
  cdev->max_fcoe_conn = BNX2X_FCOE_NUM_CONNECTIONS;

 memcpy(cdev->mac_addr, ethdev->iscsi_mac, 6);

 cp->cnic_ops = &cnic_bnx2x_ops;
 cp->start_hw = cnic_start_bnx2x_hw;
 cp->stop_hw = cnic_stop_bnx2x_hw;
 cp->setup_pgtbl = cnic_setup_page_tbl_le;
 cp->alloc_resc = cnic_alloc_bnx2x_resc;
 cp->free_resc = cnic_free_resc;
 cp->start_cm = cnic_cm_init_bnx2x_hw;
 cp->stop_cm = cnic_cm_stop_bnx2x_hw;
 cp->enable_int = cnic_enable_bnx2x_int;
 cp->disable_int_sync = cnic_disable_bnx2x_int_sync;
 if (BNX2X_CHIP_IS_E2_PLUS(bp)) {
  cp->ack_int = cnic_ack_bnx2x_e2_msix;
  cp->arm_int = cnic_arm_bnx2x_e2_msix;
 } else {
  cp->ack_int = cnic_ack_bnx2x_msix;
  cp->arm_int = cnic_arm_bnx2x_msix;
 }
 cp->close_conn = cnic_close_bnx2x_conn;
 return cdev;
}
