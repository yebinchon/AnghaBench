
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct port_info {struct adapter* adapter; } ;
struct net_device {int dummy; } ;
struct adapter {int msg_enable; } ;


 struct port_info* netdev_priv (struct net_device*) ;

__attribute__((used)) static void set_msglevel(struct net_device *dev, u32 val)
{
 struct port_info *pi = netdev_priv(dev);
 struct adapter *adapter = pi->adapter;

 adapter->msg_enable = val;
}
