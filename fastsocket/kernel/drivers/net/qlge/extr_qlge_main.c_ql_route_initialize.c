
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql_adapter {int rss_ring_count; int ndev; } ;


 int RT_IDX_BCAST ;
 int RT_IDX_BCAST_SLOT ;
 int RT_IDX_CAM_HIT ;
 int RT_IDX_CAM_HIT_SLOT ;
 int RT_IDX_IP_CSUM_ERR ;
 int RT_IDX_IP_CSUM_ERR_SLOT ;
 int RT_IDX_RSS_MATCH ;
 int RT_IDX_RSS_MATCH_SLOT ;
 int RT_IDX_TCP_UDP_CSUM_ERR_SLOT ;
 int RT_IDX_TU_CSUM_ERR ;
 int SEM_RT_IDX_MASK ;
 int ifup ;
 int netif_err (struct ql_adapter*,int ,int ,char*) ;
 int ql_clear_routing_entries (struct ql_adapter*) ;
 int ql_sem_spinlock (struct ql_adapter*,int ) ;
 int ql_sem_unlock (struct ql_adapter*,int ) ;
 int ql_set_routing_reg (struct ql_adapter*,int ,int ,int) ;

__attribute__((used)) static int ql_route_initialize(struct ql_adapter *qdev)
{
 int status = 0;


 status = ql_clear_routing_entries(qdev);
 if (status)
  return status;

 status = ql_sem_spinlock(qdev, SEM_RT_IDX_MASK);
 if (status)
  return status;

 status = ql_set_routing_reg(qdev, RT_IDX_IP_CSUM_ERR_SLOT,
      RT_IDX_IP_CSUM_ERR, 1);
 if (status) {
  netif_err(qdev, ifup, qdev->ndev, "Failed to init routing"
   " register for IP CSUM error packets.\n");
  goto exit;
 }
 status = ql_set_routing_reg(qdev, RT_IDX_TCP_UDP_CSUM_ERR_SLOT,
      RT_IDX_TU_CSUM_ERR, 1);
 if (status) {
  netif_err(qdev, ifup, qdev->ndev, "Failed to init routing"
   " register for TCP/UDP CSUM error packets.\n");
  goto exit;
 }
 status = ql_set_routing_reg(qdev, RT_IDX_BCAST_SLOT, RT_IDX_BCAST, 1);
 if (status) {
  netif_err(qdev, ifup, qdev->ndev,
     "Failed to init routing register for broadcast packets.\n");
  goto exit;
 }



 if (qdev->rss_ring_count > 1) {
  status = ql_set_routing_reg(qdev, RT_IDX_RSS_MATCH_SLOT,
     RT_IDX_RSS_MATCH, 1);
  if (status) {
   netif_err(qdev, ifup, qdev->ndev,
      "Failed to init routing register for MATCH RSS packets.\n");
   goto exit;
  }
 }

 status = ql_set_routing_reg(qdev, RT_IDX_CAM_HIT_SLOT,
        RT_IDX_CAM_HIT, 1);
 if (status)
  netif_err(qdev, ifup, qdev->ndev,
     "Failed to init routing register for CAM packets.\n");
exit:
 ql_sem_unlock(qdev, SEM_RT_IDX_MASK);
 return status;
}
