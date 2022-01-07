
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct port_info {struct cmac* mac; } ;
struct net_device {size_t if_port; struct adapter* ml_priv; } ;
struct cmac {TYPE_1__* ops; } ;
struct TYPE_4__ {scalar_t__ stats_update_period; } ;
struct adapter {int open_device_map; int work_lock; TYPE_2__ params; int napi; struct port_info* port; } ;
struct TYPE_3__ {int (* disable ) (struct cmac*,int) ;} ;


 int MAC_DIRECTION_RX ;
 int MAC_DIRECTION_TX ;
 int PORT_MASK ;
 int cancel_mac_stats_update (struct adapter*) ;
 int clear_bit (size_t,int*) ;
 int cxgb_down (struct adapter*) ;
 int napi_disable (int *) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int smp_mb__after_clear_bit () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct cmac*,int) ;

__attribute__((used)) static int cxgb_close(struct net_device *dev)
{
 struct adapter *adapter = dev->ml_priv;
 struct port_info *p = &adapter->port[dev->if_port];
 struct cmac *mac = p->mac;

 netif_stop_queue(dev);
 napi_disable(&adapter->napi);
 mac->ops->disable(mac, MAC_DIRECTION_TX | MAC_DIRECTION_RX);
 netif_carrier_off(dev);

 clear_bit(dev->if_port, &adapter->open_device_map);
 if (adapter->params.stats_update_period &&
     !(adapter->open_device_map & PORT_MASK)) {

  smp_mb__after_clear_bit();
  spin_lock(&adapter->work_lock);
  spin_unlock(&adapter->work_lock);
  cancel_mac_stats_update(adapter);
 }

 if (!adapter->open_device_map)
  cxgb_down(adapter);
 return 0;
}
