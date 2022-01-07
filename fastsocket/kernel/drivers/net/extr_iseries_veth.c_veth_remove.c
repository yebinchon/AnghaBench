
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vio_dev {size_t unit_address; } ;
struct veth_port {int lpar_map; int kobject; } ;
struct veth_lpar_connection {int kobject; } ;
struct net_device {int dummy; } ;


 int HVMAXARCHITECTEDLPS ;
 int free_netdev (struct net_device*) ;
 int kobject_del (int *) ;
 int kobject_put (int *) ;
 struct veth_port* netdev_priv (struct net_device*) ;
 int unregister_netdev (struct net_device*) ;
 struct veth_lpar_connection** veth_cnx ;
 struct net_device** veth_dev ;

__attribute__((used)) static int veth_remove(struct vio_dev *vdev)
{
 struct veth_lpar_connection *cnx;
 struct net_device *dev;
 struct veth_port *port;
 int i;

 dev = veth_dev[vdev->unit_address];

 if (! dev)
  return 0;

 port = netdev_priv(dev);

 for (i = 0; i < HVMAXARCHITECTEDLPS; i++) {
  cnx = veth_cnx[i];

  if (cnx && (port->lpar_map & (1 << i))) {

   kobject_put(&cnx->kobject);
  }
 }

 veth_dev[vdev->unit_address] = ((void*)0);
 kobject_del(&port->kobject);
 kobject_put(&port->kobject);
 unregister_netdev(dev);
 free_netdev(dev);

 return 0;
}
