
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct yam_port {scalar_t__ magic; scalar_t__ tx_state; int slotcnt; int slot; int pers; scalar_t__ dcd; scalar_t__ dupmode; int send_queue; } ;
struct net_device {int dummy; } ;


 scalar_t__ TX_OFF ;
 scalar_t__ YAM_MAGIC ;
 struct yam_port* netdev_priv (struct net_device*) ;
 int random32 () ;
 scalar_t__ skb_queue_empty (int *) ;
 int yam_start_tx (struct net_device*,struct yam_port*) ;

__attribute__((used)) static void yam_arbitrate(struct net_device *dev)
{
 struct yam_port *yp = netdev_priv(dev);

 if (yp->magic != YAM_MAGIC || yp->tx_state != TX_OFF ||
     skb_queue_empty(&yp->send_queue))
  return;


 if (yp->dupmode) {

  yam_start_tx(dev, yp);
  return;
 }
 if (yp->dcd) {

  yp->slotcnt = yp->slot / 10;
  return;
 }

 if ((--yp->slotcnt) > 0)
  return;

 yp->slotcnt = yp->slot / 10;


 if ((random32() % 256) > yp->pers)
  return;

 yam_start_tx(dev, yp);
}
