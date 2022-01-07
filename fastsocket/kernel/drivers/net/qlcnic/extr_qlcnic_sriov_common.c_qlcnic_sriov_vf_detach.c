
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct qlcnic_intrpt_config {size_t id; scalar_t__ src; scalar_t__ enabled; } ;
struct qlcnic_hardware_context {size_t num_msix; scalar_t__ reset_context; struct qlcnic_intrpt_config* intr_tbl; } ;
struct qlcnic_adapter {struct net_device* netdev; struct qlcnic_hardware_context* ahw; } ;
struct net_device {int dummy; } ;


 int netif_device_detach (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int qlcnic_83xx_disable_mbx_intr (struct qlcnic_adapter*) ;
 int qlcnic_down (struct qlcnic_adapter*,struct net_device*) ;

__attribute__((used)) static void qlcnic_sriov_vf_detach(struct qlcnic_adapter *adapter)
{
 struct qlcnic_hardware_context *ahw = adapter->ahw;
 struct qlcnic_intrpt_config *intr_tbl = ahw->intr_tbl;
 struct net_device *netdev = adapter->netdev;
 u8 i, max_ints = ahw->num_msix - 1;

 qlcnic_83xx_disable_mbx_intr(adapter);
 netif_device_detach(netdev);
 if (netif_running(netdev))
  qlcnic_down(adapter, netdev);

 for (i = 0; i < max_ints; i++) {
  intr_tbl[i].id = i;
  intr_tbl[i].enabled = 0;
  intr_tbl[i].src = 0;
 }
 ahw->reset_context = 0;
}
