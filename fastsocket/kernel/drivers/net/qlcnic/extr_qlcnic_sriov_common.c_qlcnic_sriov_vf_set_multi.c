
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct qlcnic_adapter {TYPE_2__* ahw; int state; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* sriov; } ;
struct TYPE_3__ {int vlan; } ;


 int __QLCNIC_FW_ATTACHED ;
 int __qlcnic_set_multi (struct net_device*,int ) ;
 struct qlcnic_adapter* netdev_priv (struct net_device*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void qlcnic_sriov_vf_set_multi(struct net_device *netdev)
{
 struct qlcnic_adapter *adapter = netdev_priv(netdev);
 u16 vlan;

 if (!test_bit(__QLCNIC_FW_ATTACHED, &adapter->state))
  return;

 vlan = adapter->ahw->sriov->vlan;
 __qlcnic_set_multi(netdev, vlan);
}
