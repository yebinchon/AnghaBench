
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qlcnic_back_channel {int dummy; } ;
struct qlcnic_adapter {scalar_t__ need_fw_reset; TYPE_2__* ahw; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* sriov; } ;
struct TYPE_3__ {struct qlcnic_back_channel bc; } ;


 struct qlcnic_adapter* netdev_priv (struct net_device*) ;
 int qlcnic_sriov_handle_async_multi ;
 int qlcnic_sriov_schedule_bc_async_work (struct qlcnic_back_channel*,int ,struct net_device*) ;

void qlcnic_sriov_vf_schedule_multi(struct net_device *netdev)
{
 struct qlcnic_adapter *adapter = netdev_priv(netdev);
 struct qlcnic_back_channel *bc = &adapter->ahw->sriov->bc;

 if (adapter->need_fw_reset)
  return;

 qlcnic_sriov_schedule_bc_async_work(bc, qlcnic_sriov_handle_async_multi,
         netdev);
}
