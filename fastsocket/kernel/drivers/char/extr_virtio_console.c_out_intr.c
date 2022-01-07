
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtqueue {TYPE_1__* vdev; } ;
struct port {int waitqueue; } ;
struct TYPE_2__ {int priv; } ;


 struct port* find_port_by_vq (int ,struct virtqueue*) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void out_intr(struct virtqueue *vq)
{
 struct port *port;

 port = find_port_by_vq(vq->vdev->priv, vq);
 if (!port)
  return;

 wake_up_interruptible(&port->waitqueue);
}
