
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct veth_port {int lpar_map; int stopped_map; int queue_lock; } ;
struct veth_lpar_connection {int remote_lp; } ;
struct net_device {int name; } ;


 int HVMAXARCHITECTEDVIRTUALLANS ;
 struct veth_port* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int veth_debug (char*,int,int ,int) ;
 struct net_device** veth_dev ;

__attribute__((used)) static void veth_stop_queues(struct veth_lpar_connection *cnx)
{
 int i;

 for (i = 0; i < HVMAXARCHITECTEDVIRTUALLANS; i++) {
  struct net_device *dev = veth_dev[i];
  struct veth_port *port;

  if (! dev)
   continue;

  port = netdev_priv(dev);


  if (! (port->lpar_map & (1 << cnx->remote_lp)))
   continue;

  spin_lock(&port->queue_lock);

  netif_stop_queue(dev);
  port->stopped_map |= (1 << cnx->remote_lp);

  veth_debug("cnx %d: stopped queue for %s, map = 0x%x.\n",
    cnx->remote_lp, dev->name, port->stopped_map);

  spin_unlock(&port->queue_lock);
 }
}
