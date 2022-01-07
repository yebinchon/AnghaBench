
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcast_port {int comp; } ;
struct mcast_device {int end_port; int start_port; struct mcast_port* port; int event_handler; } ;
struct ib_device {int dummy; } ;


 scalar_t__ IB_LINK_LAYER_INFINIBAND ;
 int deref_port (struct mcast_port*) ;
 int flush_workqueue (int ) ;
 struct mcast_device* ib_get_client_data (struct ib_device*,int *) ;
 int ib_unregister_event_handler (int *) ;
 int kfree (struct mcast_device*) ;
 int mcast_client ;
 int mcast_wq ;
 scalar_t__ rdma_port_get_link_layer (struct ib_device*,int) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static void mcast_remove_one(struct ib_device *device)
{
 struct mcast_device *dev;
 struct mcast_port *port;
 int i;

 dev = ib_get_client_data(device, &mcast_client);
 if (!dev)
  return;

 ib_unregister_event_handler(&dev->event_handler);
 flush_workqueue(mcast_wq);

 for (i = 0; i <= dev->end_port - dev->start_port; i++) {
  if (rdma_port_get_link_layer(device, dev->start_port + i) ==
      IB_LINK_LAYER_INFINIBAND) {
   port = &dev->port[i];
   deref_port(port);
   wait_for_completion(&port->comp);
  }
 }

 kfree(dev);
}
