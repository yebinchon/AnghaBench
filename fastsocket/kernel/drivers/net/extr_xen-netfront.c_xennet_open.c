
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ rsp_cons; TYPE_1__* sring; } ;
struct netfront_info {int rx_lock; int napi; TYPE_2__ rx; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {scalar_t__ rsp_event; } ;


 scalar_t__ RING_HAS_UNCONSUMED_RESPONSES (TYPE_2__*) ;
 int napi_enable (int *) ;
 int napi_schedule (int *) ;
 struct netfront_info* netdev_priv (struct net_device*) ;
 scalar_t__ netif_carrier_ok (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int xennet_alloc_rx_buffers (struct net_device*) ;

__attribute__((used)) static int xennet_open(struct net_device *dev)
{
 struct netfront_info *np = netdev_priv(dev);

 napi_enable(&np->napi);

 spin_lock_bh(&np->rx_lock);
 if (netif_carrier_ok(dev)) {
  xennet_alloc_rx_buffers(dev);
  np->rx.sring->rsp_event = np->rx.rsp_cons + 1;
  if (RING_HAS_UNCONSUMED_RESPONSES(&np->rx))
   napi_schedule(&np->napi);
 }
 spin_unlock_bh(&np->rx_lock);

 netif_start_queue(dev);

 return 0;
}
