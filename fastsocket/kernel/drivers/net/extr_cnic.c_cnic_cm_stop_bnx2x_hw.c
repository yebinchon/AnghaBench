
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cnic_local {int iscsi_conn; int delete_task; int ctx_tbl; } ;
struct cnic_dev {int netdev; struct cnic_local* cnic_priv; } ;


 scalar_t__ atomic_read (int *) ;
 int cancel_delayed_work (int *) ;
 int cnic_bnx2x_delete_wait (struct cnic_dev*,int ) ;
 int cnic_wq ;
 int flush_workqueue (int ) ;
 int netdev_warn (int ,char*,scalar_t__) ;
 int netif_running (int ) ;

__attribute__((used)) static void cnic_cm_stop_bnx2x_hw(struct cnic_dev *dev)
{
 struct cnic_local *cp = dev->cnic_priv;

 if (!cp->ctx_tbl)
  return;

 if (!netif_running(dev->netdev))
  return;

 cnic_bnx2x_delete_wait(dev, 0);

 cancel_delayed_work(&cp->delete_task);
 flush_workqueue(cnic_wq);

 if (atomic_read(&cp->iscsi_conn) != 0)
  netdev_warn(dev->netdev, "%d iSCSI connections not destroyed\n",
       atomic_read(&cp->iscsi_conn));
}
