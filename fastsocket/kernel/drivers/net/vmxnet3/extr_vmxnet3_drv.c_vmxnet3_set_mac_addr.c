
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmxnet3_adapter {int dummy; } ;
struct sockaddr {int sa_data; } ;
struct net_device {int addr_len; int dev_addr; } ;


 int memcpy (int ,int ,int ) ;
 struct vmxnet3_adapter* netdev_priv (struct net_device*) ;
 int vmxnet3_write_mac_addr (struct vmxnet3_adapter*,int ) ;

__attribute__((used)) static int
vmxnet3_set_mac_addr(struct net_device *netdev, void *p)
{
 struct sockaddr *addr = p;
 struct vmxnet3_adapter *adapter = netdev_priv(netdev);

 memcpy(netdev->dev_addr, addr->sa_data, netdev->addr_len);
 vmxnet3_write_mac_addr(adapter, addr->sa_data);

 return 0;
}
