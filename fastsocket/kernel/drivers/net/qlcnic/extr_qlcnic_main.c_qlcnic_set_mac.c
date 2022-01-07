
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct qlcnic_adapter {int flags; int state; int netdev; int mac_addr; } ;
struct net_device {int addr_len; int dev_addr; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int ETH_ALEN ;
 int QLCNIC_MAC_OVERRIDE_DISABLED ;
 int __QLCNIC_DEV_UP ;
 int is_valid_ether_addr (int ) ;
 int memcmp (int ,int ,int ) ;
 int memcpy (int ,int ,int ) ;
 struct qlcnic_adapter* netdev_priv (struct net_device*) ;
 int netif_device_attach (struct net_device*) ;
 int netif_device_detach (struct net_device*) ;
 int qlcnic_delete_adapter_mac (struct qlcnic_adapter*) ;
 int qlcnic_napi_disable (struct qlcnic_adapter*) ;
 int qlcnic_napi_enable (struct qlcnic_adapter*) ;
 int qlcnic_set_multi (int ) ;
 scalar_t__ qlcnic_sriov_vf_check (struct qlcnic_adapter*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int qlcnic_set_mac(struct net_device *netdev, void *p)
{
 struct qlcnic_adapter *adapter = netdev_priv(netdev);
 struct sockaddr *addr = p;

 if (qlcnic_sriov_vf_check(adapter))
  return -EINVAL;

 if ((adapter->flags & QLCNIC_MAC_OVERRIDE_DISABLED))
  return -EOPNOTSUPP;

 if (!is_valid_ether_addr(addr->sa_data))
  return -EINVAL;

 if (!memcmp(adapter->mac_addr, addr->sa_data, ETH_ALEN))
  return 0;

 if (test_bit(__QLCNIC_DEV_UP, &adapter->state)) {
  netif_device_detach(netdev);
  qlcnic_napi_disable(adapter);
 }

 qlcnic_delete_adapter_mac(adapter);
 memcpy(adapter->mac_addr, addr->sa_data, netdev->addr_len);
 memcpy(netdev->dev_addr, addr->sa_data, netdev->addr_len);
 qlcnic_set_multi(adapter->netdev);

 if (test_bit(__QLCNIC_DEV_UP, &adapter->state)) {
  netif_device_attach(netdev);
  qlcnic_napi_enable(adapter);
 }
 return 0;
}
