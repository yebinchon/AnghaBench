
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {scalar_t__ device; } ;
struct net_device {int dummy; } ;
struct cnic_local {int close_conn; int disable_int_sync; int enable_int; int stop_cm; int start_cm; int free_resc; int alloc_resc; int setup_pgtbl; int stop_hw; int start_hw; int * cnic_ops; int chip_id; struct cnic_eth_dev* ethdev; } ;
struct cnic_eth_dev {int max_iscsi_conn; int chip_id; struct pci_dev* pdev; } ;
struct cnic_dev {int max_iscsi_conn; struct pci_dev* pcidev; struct cnic_local* cnic_priv; int submit_kwqes; int flags; } ;
struct bnx2 {struct cnic_eth_dev* (* cnic_probe ) (struct net_device*) ;} ;


 int CNIC_F_BNX2_CLASS ;
 scalar_t__ PCI_DEVICE_ID_NX2_5709 ;
 scalar_t__ PCI_DEVICE_ID_NX2_5709S ;
 int PCI_REVISION_ID ;
 int cnic_alloc_bnx2_resc ;
 struct cnic_dev* cnic_alloc_dev (struct net_device*,struct pci_dev*) ;
 int cnic_bnx2_ops ;
 int cnic_close_bnx2_conn ;
 int cnic_cm_init_bnx2_hw ;
 int cnic_cm_stop_bnx2_hw ;
 int cnic_disable_bnx2_int_sync ;
 int cnic_enable_bnx2_int ;
 int cnic_free_resc ;
 int cnic_setup_page_tbl ;
 int cnic_start_bnx2_hw ;
 int cnic_stop_bnx2_hw ;
 int cnic_submit_bnx2_kwqes ;
 int dev_hold (struct net_device*) ;
 int dev_put (struct net_device*) ;
 struct bnx2* netdev_priv (struct net_device*) ;
 int pci_dev_get (struct pci_dev*) ;
 int pci_dev_put (struct pci_dev*) ;
 int pci_read_config_byte (struct pci_dev*,int ,int*) ;
 int set_bit (int ,int *) ;
 struct cnic_eth_dev* stub1 (struct net_device*) ;

__attribute__((used)) static struct cnic_dev *init_bnx2_cnic(struct net_device *dev)
{
 struct pci_dev *pdev;
 struct cnic_dev *cdev;
 struct cnic_local *cp;
 struct bnx2 *bp = netdev_priv(dev);
 struct cnic_eth_dev *ethdev = ((void*)0);

 if (bp->cnic_probe)
  ethdev = (bp->cnic_probe)(dev);

 if (!ethdev)
  return ((void*)0);

 pdev = ethdev->pdev;
 if (!pdev)
  return ((void*)0);

 dev_hold(dev);
 pci_dev_get(pdev);
 if (pdev->device == PCI_DEVICE_ID_NX2_5709 ||
     pdev->device == PCI_DEVICE_ID_NX2_5709S) {
  u8 rev;

  pci_read_config_byte(pdev, PCI_REVISION_ID, &rev);
  if (rev < 0x10) {
   pci_dev_put(pdev);
   goto cnic_err;
  }
 }
 pci_dev_put(pdev);

 cdev = cnic_alloc_dev(dev, pdev);
 if (cdev == ((void*)0))
  goto cnic_err;

 set_bit(CNIC_F_BNX2_CLASS, &cdev->flags);
 cdev->submit_kwqes = cnic_submit_bnx2_kwqes;

 cp = cdev->cnic_priv;
 cp->ethdev = ethdev;
 cdev->pcidev = pdev;
 cp->chip_id = ethdev->chip_id;

 cdev->max_iscsi_conn = ethdev->max_iscsi_conn;

 cp->cnic_ops = &cnic_bnx2_ops;
 cp->start_hw = cnic_start_bnx2_hw;
 cp->stop_hw = cnic_stop_bnx2_hw;
 cp->setup_pgtbl = cnic_setup_page_tbl;
 cp->alloc_resc = cnic_alloc_bnx2_resc;
 cp->free_resc = cnic_free_resc;
 cp->start_cm = cnic_cm_init_bnx2_hw;
 cp->stop_cm = cnic_cm_stop_bnx2_hw;
 cp->enable_int = cnic_enable_bnx2_int;
 cp->disable_int_sync = cnic_disable_bnx2_int_sync;
 cp->close_conn = cnic_close_bnx2_conn;
 return cdev;

cnic_err:
 dev_put(dev);
 return ((void*)0);
}
