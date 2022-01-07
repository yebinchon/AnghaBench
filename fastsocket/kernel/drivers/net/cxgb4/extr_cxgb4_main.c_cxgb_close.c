
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port_info {int viid; struct adapter* adapter; } ;
struct net_device {int dummy; } ;
struct adapter {int fn; } ;


 struct port_info* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_tx_stop_all_queues (struct net_device*) ;
 int t4_enable_vi (struct adapter*,int ,int ,int,int) ;

__attribute__((used)) static int cxgb_close(struct net_device *dev)
{
 struct port_info *pi = netdev_priv(dev);
 struct adapter *adapter = pi->adapter;

 netif_tx_stop_all_queues(dev);
 netif_carrier_off(dev);
 return t4_enable_vi(adapter, adapter->fn, pi->viid, 0, 0);
}
