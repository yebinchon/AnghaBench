
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qlcnic_host_sds_ring {int dummy; } ;
struct qlcnic_adapter {int max_sds_rings; TYPE_2__* ahw; TYPE_1__* recv_ctx; int state; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {scalar_t__ diag_test; } ;
struct TYPE_3__ {struct qlcnic_host_sds_ring* sds_rings; } ;


 scalar_t__ QLCNIC_INTERRUPT_TEST ;
 int __QLCNIC_DEV_UP ;
 int __qlcnic_up (struct qlcnic_adapter*,struct net_device*) ;
 int clear_bit (int ,int *) ;
 struct qlcnic_adapter* netdev_priv (struct net_device*) ;
 int netif_device_attach (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 scalar_t__ qlcnic_attach (struct qlcnic_adapter*) ;
 int qlcnic_detach (struct qlcnic_adapter*) ;
 int qlcnic_disable_int (struct qlcnic_host_sds_ring*) ;
 int qlcnic_fw_destroy_ctx (struct qlcnic_adapter*) ;

void qlcnic_diag_free_res(struct net_device *netdev, int max_sds_rings)
{
 struct qlcnic_adapter *adapter = netdev_priv(netdev);
 struct qlcnic_host_sds_ring *sds_ring;
 int ring;

 clear_bit(__QLCNIC_DEV_UP, &adapter->state);
 if (adapter->ahw->diag_test == QLCNIC_INTERRUPT_TEST) {
  for (ring = 0; ring < adapter->max_sds_rings; ring++) {
   sds_ring = &adapter->recv_ctx->sds_rings[ring];
   qlcnic_disable_int(sds_ring);
  }
 }

 qlcnic_fw_destroy_ctx(adapter);

 qlcnic_detach(adapter);

 adapter->ahw->diag_test = 0;
 adapter->max_sds_rings = max_sds_rings;

 if (qlcnic_attach(adapter))
  goto out;

 if (netif_running(netdev))
  __qlcnic_up(adapter, netdev);
out:
 netif_device_attach(netdev);
}
