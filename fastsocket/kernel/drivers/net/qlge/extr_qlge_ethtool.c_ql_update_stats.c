
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_2__ {int tx_pkts; } ;
struct ql_adapter {int stats_lock; int xg_sem_mask; int ndev; TYPE_1__ nic_stats; } ;


 int QL_DUMP_STAT (struct ql_adapter*) ;
 int drv ;
 int netif_err (struct ql_adapter*,int ,int ,char*,...) ;
 scalar_t__ ql_read_xgmac_reg64 (struct ql_adapter*,int,int *) ;
 scalar_t__ ql_sem_spinlock (struct ql_adapter*,int ) ;
 int ql_sem_unlock (struct ql_adapter*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void ql_update_stats(struct ql_adapter *qdev)
{
 u32 i;
 u64 data;
 u64 *iter = &qdev->nic_stats.tx_pkts;

 spin_lock(&qdev->stats_lock);
 if (ql_sem_spinlock(qdev, qdev->xg_sem_mask)) {
   netif_err(qdev, drv, qdev->ndev,
      "Couldn't get xgmac sem.\n");
  goto quit;
 }



 for (i = 0x200; i < 0x280; i += 8) {
  if (ql_read_xgmac_reg64(qdev, i, &data)) {
   netif_err(qdev, drv, qdev->ndev,
      "Error reading status register 0x%.04x.\n",
      i);
   goto end;
  } else
   *iter = data;
  iter++;
 }




 for (i = 0x300; i < 0x3d0; i += 8) {
  if (ql_read_xgmac_reg64(qdev, i, &data)) {
   netif_err(qdev, drv, qdev->ndev,
      "Error reading status register 0x%.04x.\n",
      i);
   goto end;
  } else
   *iter = data;
  iter++;
 }




 for (i = 0x500; i < 0x540; i += 8) {
  if (ql_read_xgmac_reg64(qdev, i, &data)) {
   netif_err(qdev, drv, qdev->ndev,
      "Error reading status register 0x%.04x.\n",
      i);
   goto end;
  } else
   *iter = data;
  iter++;
 }




 for (i = 0x568; i < 0x5a8; i += 8) {
  if (ql_read_xgmac_reg64(qdev, i, &data)) {
   netif_err(qdev, drv, qdev->ndev,
      "Error reading status register 0x%.04x.\n",
      i);
   goto end;
  } else
   *iter = data;
  iter++;
 }




 if (ql_read_xgmac_reg64(qdev, 0x5b8, &data)) {
  netif_err(qdev, drv, qdev->ndev,
     "Error reading status register 0x%.04x.\n", i);
  goto end;
 } else
  *iter = data;
end:
 ql_sem_unlock(qdev, qdev->xg_sem_mask);
quit:
 spin_unlock(&qdev->stats_lock);

 QL_DUMP_STAT(qdev);

 return;
}
