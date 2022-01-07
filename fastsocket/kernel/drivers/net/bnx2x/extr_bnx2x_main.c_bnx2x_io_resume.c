
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct bnx2x {scalar_t__ recovery_state; int fw_seq; int dev; } ;
struct TYPE_2__ {int drv_mb_header; } ;


 scalar_t__ BNX2X_RECOVERY_DONE ;
 size_t BP_FW_MB_IDX (struct bnx2x*) ;
 int DRV_MSG_SEQ_NUMBER_MASK ;
 int LOAD_NORMAL ;
 int SHMEM_RD (struct bnx2x*,int ) ;
 int bnx2x_nic_load (struct bnx2x*,int ) ;
 TYPE_1__* func_mb ;
 int netdev_err (int ,char*) ;
 struct bnx2x* netdev_priv (struct net_device*) ;
 int netif_device_attach (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

__attribute__((used)) static void bnx2x_io_resume(struct pci_dev *pdev)
{
 struct net_device *dev = pci_get_drvdata(pdev);
 struct bnx2x *bp = netdev_priv(dev);

 if (bp->recovery_state != BNX2X_RECOVERY_DONE) {
  netdev_err(bp->dev, "Handling parity error recovery. Try again later\n");
  return;
 }

 rtnl_lock();

 bp->fw_seq = SHMEM_RD(bp, func_mb[BP_FW_MB_IDX(bp)].drv_mb_header) &
       DRV_MSG_SEQ_NUMBER_MASK;

 if (netif_running(dev))
  bnx2x_nic_load(bp, LOAD_NORMAL);

 netif_device_attach(dev);

 rtnl_unlock();
}
