
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct enic {unsigned int intr_count; unsigned int rq_count; unsigned int wq_count; unsigned int cq_count; int * intr; int * cq; int * rq; int * wq; int * napi; int notify_timer; } ;


 int del_timer_sync (int *) ;
 int enic_dev_del_station_addr (struct enic*) ;
 int enic_dev_disable (struct enic*) ;
 int enic_dev_notify_unset (struct enic*) ;
 int enic_free_intr (struct enic*) ;
 int enic_free_rq_buf ;
 int enic_free_wq_buf ;
 int enic_is_dynamic (struct enic*) ;
 int enic_is_sriov_vf (struct enic*) ;
 int enic_synchronize_irqs (struct enic*) ;
 int napi_disable (int *) ;
 struct enic* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_tx_disable (struct net_device*) ;
 int vnic_cq_clean (int *) ;
 int vnic_intr_clean (int *) ;
 int vnic_intr_mask (int *) ;
 int vnic_intr_masked (int *) ;
 int vnic_rq_clean (int *,int ) ;
 int vnic_rq_disable (int *) ;
 int vnic_wq_clean (int *,int ) ;
 int vnic_wq_disable (int *) ;

__attribute__((used)) static int enic_stop(struct net_device *netdev)
{
 struct enic *enic = netdev_priv(netdev);
 unsigned int i;
 int err;

 for (i = 0; i < enic->intr_count; i++) {
  vnic_intr_mask(&enic->intr[i]);
  (void)vnic_intr_masked(&enic->intr[i]);
 }

 enic_synchronize_irqs(enic);

 del_timer_sync(&enic->notify_timer);

 enic_dev_disable(enic);

 for (i = 0; i < enic->rq_count; i++)
  napi_disable(&enic->napi[i]);

 netif_carrier_off(netdev);
 netif_tx_disable(netdev);

 if (!enic_is_dynamic(enic) && !enic_is_sriov_vf(enic))
  enic_dev_del_station_addr(enic);

 for (i = 0; i < enic->wq_count; i++) {
  err = vnic_wq_disable(&enic->wq[i]);
  if (err)
   return err;
 }
 for (i = 0; i < enic->rq_count; i++) {
  err = vnic_rq_disable(&enic->rq[i]);
  if (err)
   return err;
 }

 enic_dev_notify_unset(enic);
 enic_free_intr(enic);

 for (i = 0; i < enic->wq_count; i++)
  vnic_wq_clean(&enic->wq[i], enic_free_wq_buf);
 for (i = 0; i < enic->rq_count; i++)
  vnic_rq_clean(&enic->rq[i], enic_free_rq_buf);
 for (i = 0; i < enic->cq_count; i++)
  vnic_cq_clean(&enic->cq[i]);
 for (i = 0; i < enic->intr_count; i++)
  vnic_intr_clean(&enic->intr[i]);

 return 0;
}
