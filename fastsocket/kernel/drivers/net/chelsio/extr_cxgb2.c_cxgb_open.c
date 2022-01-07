
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {size_t if_port; struct adapter* ml_priv; } ;
struct TYPE_2__ {scalar_t__ stats_update_period; } ;
struct adapter {int open_device_map; TYPE_1__ params; int * port; int napi; } ;


 int PORT_MASK ;
 int __set_bit (size_t,int*) ;
 int cxgb_up (struct adapter*) ;
 int link_start (int *) ;
 int napi_disable (int *) ;
 int napi_enable (int *) ;
 int netif_start_queue (struct net_device*) ;
 int schedule_mac_stats_update (struct adapter*,scalar_t__) ;

__attribute__((used)) static int cxgb_open(struct net_device *dev)
{
 int err;
 struct adapter *adapter = dev->ml_priv;
 int other_ports = adapter->open_device_map & PORT_MASK;

 napi_enable(&adapter->napi);
 if (!adapter->open_device_map && (err = cxgb_up(adapter)) < 0) {
  napi_disable(&adapter->napi);
  return err;
 }

 __set_bit(dev->if_port, &adapter->open_device_map);
 link_start(&adapter->port[dev->if_port]);
 netif_start_queue(dev);
 if (!other_ports && adapter->params.stats_update_period)
  schedule_mac_stats_update(adapter,
       adapter->params.stats_update_period);
 return 0;
}
