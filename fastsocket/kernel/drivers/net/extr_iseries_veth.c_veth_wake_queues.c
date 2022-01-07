
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct veth_port {int lpar_map; int stopped_map; int queue_lock; } ;
struct veth_lpar_connection {int remote_lp; } ;
struct net_device {int name; } ;


 int HVMAXARCHITECTEDVIRTUALLANS ;
 struct veth_port* netdev_priv (struct net_device*) ;
 scalar_t__ netif_queue_stopped (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int veth_debug (char*,int,int ) ;
 struct net_device** veth_dev ;

__attribute__((used)) static void veth_wake_queues(struct veth_lpar_connection *cnx)
{
 int i;

 for (i = 0; i < HVMAXARCHITECTEDVIRTUALLANS; i++) {
  struct net_device *dev = veth_dev[i];
  struct veth_port *port;
  unsigned long flags;

  if (! dev)
   continue;

  port = netdev_priv(dev);

  if (! (port->lpar_map & (1<<cnx->remote_lp)))
   continue;

  spin_lock_irqsave(&port->queue_lock, flags);

  port->stopped_map &= ~(1 << cnx->remote_lp);

  if (0 == port->stopped_map && netif_queue_stopped(dev)) {
   veth_debug("cnx %d: woke queue for %s.\n",
     cnx->remote_lp, dev->name);
   netif_wake_queue(dev);
  }
  spin_unlock_irqrestore(&port->queue_lock, flags);
 }
}
