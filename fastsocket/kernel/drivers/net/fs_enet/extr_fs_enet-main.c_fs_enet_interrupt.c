
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct fs_platform_info {scalar_t__ use_napi; } ;
struct fs_enet_private {int ev_napi_rx; int ev_err; int ev_rx; int ev_tx; int napi; TYPE_1__* ops; struct fs_platform_info* fpi; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int (* get_int_events ) (struct net_device*) ;int (* clear_int_events ) (struct net_device*,int) ;int (* napi_disable_rx ) (struct net_device*) ;int (* ev_error ) (struct net_device*,int) ;} ;


 int IRQ_RETVAL (int) ;
 int __napi_schedule (int *) ;
 int fs_enet_rx_non_napi (struct net_device*) ;
 int fs_enet_tx (struct net_device*) ;
 int napi_schedule_prep (int *) ;
 struct fs_enet_private* netdev_priv (struct net_device*) ;
 int stub1 (struct net_device*) ;
 int stub2 (struct net_device*,int) ;
 int stub3 (struct net_device*,int) ;
 int stub4 (struct net_device*) ;
 int stub5 (struct net_device*,int) ;

__attribute__((used)) static irqreturn_t
fs_enet_interrupt(int irq, void *dev_id)
{
 struct net_device *dev = dev_id;
 struct fs_enet_private *fep;
 const struct fs_platform_info *fpi;
 u32 int_events;
 u32 int_clr_events;
 int nr, napi_ok;
 int handled;

 fep = netdev_priv(dev);
 fpi = fep->fpi;

 nr = 0;
 while ((int_events = (*fep->ops->get_int_events)(dev)) != 0) {
  nr++;

  int_clr_events = int_events;
  if (fpi->use_napi)
   int_clr_events &= ~fep->ev_napi_rx;

  (*fep->ops->clear_int_events)(dev, int_clr_events);

  if (int_events & fep->ev_err)
   (*fep->ops->ev_error)(dev, int_events);

  if (int_events & fep->ev_rx) {
   if (!fpi->use_napi)
    fs_enet_rx_non_napi(dev);
   else {
    napi_ok = napi_schedule_prep(&fep->napi);

    (*fep->ops->napi_disable_rx)(dev);
    (*fep->ops->clear_int_events)(dev, fep->ev_napi_rx);



    if (napi_ok)
     __napi_schedule(&fep->napi);
   }
  }

  if (int_events & fep->ev_tx)
   fs_enet_tx(dev);
 }

 handled = nr > 0;
 return IRQ_RETVAL(handled);
}
