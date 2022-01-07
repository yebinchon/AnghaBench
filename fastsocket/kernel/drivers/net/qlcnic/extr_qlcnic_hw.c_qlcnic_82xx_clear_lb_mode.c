
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct qlcnic_adapter {struct net_device* netdev; } ;
struct net_device {int flags; } ;


 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int VPORT_MISS_MODE_ACCEPT_ALL ;
 int VPORT_MISS_MODE_ACCEPT_MULTI ;
 int VPORT_MISS_MODE_DROP ;
 int msleep (int) ;
 int qlcnic_nic_set_promisc (struct qlcnic_adapter*,int ) ;
 int qlcnic_set_fw_loopback (struct qlcnic_adapter*,int ) ;

int qlcnic_82xx_clear_lb_mode(struct qlcnic_adapter *adapter, u8 mode)
{
 struct net_device *netdev = adapter->netdev;

 mode = VPORT_MISS_MODE_DROP;
 qlcnic_set_fw_loopback(adapter, 0);

 if (netdev->flags & IFF_PROMISC)
  mode = VPORT_MISS_MODE_ACCEPT_ALL;
 else if (netdev->flags & IFF_ALLMULTI)
  mode = VPORT_MISS_MODE_ACCEPT_MULTI;

 qlcnic_nic_set_promisc(adapter, mode);
 msleep(1000);
 return 0;
}
