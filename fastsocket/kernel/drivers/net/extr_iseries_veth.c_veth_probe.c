
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vio_device_id {int dummy; } ;
struct vio_dev {int unit_address; } ;
struct veth_port {int lpar_map; } ;
struct veth_lpar_connection {int kobject; } ;
struct net_device {int dummy; } ;


 int HVMAXARCHITECTEDLPS ;
 int kobject_get (int *) ;
 scalar_t__ netdev_priv (struct net_device*) ;
 struct veth_lpar_connection** veth_cnx ;
 struct net_device** veth_dev ;
 int veth_kick_statemachine (struct veth_lpar_connection*) ;
 struct net_device* veth_probe_one (int,struct vio_dev*) ;
 int veth_remove (struct vio_dev*) ;

__attribute__((used)) static int veth_probe(struct vio_dev *vdev, const struct vio_device_id *id)
{
 int i = vdev->unit_address;
 struct net_device *dev;
 struct veth_port *port;

 dev = veth_probe_one(i, vdev);
 if (dev == ((void*)0)) {
  veth_remove(vdev);
  return 1;
 }
 veth_dev[i] = dev;

 port = (struct veth_port*)netdev_priv(dev);



 for (i = 0; i < HVMAXARCHITECTEDLPS; i++) {
  struct veth_lpar_connection *cnx;

  if (! (port->lpar_map & (1 << i)))
   continue;

  cnx = veth_cnx[i];
  if (!cnx)
   continue;

  kobject_get(&cnx->kobject);
  veth_kick_statemachine(cnx);
 }

 return 0;
}
