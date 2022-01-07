
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct virtio_device {int dummy; } ;
struct TYPE_4__ {int ws; int hvc; } ;
struct port {TYPE_2__ cons; TYPE_1__* portdev; } ;
struct TYPE_3__ {struct virtio_device* vdev; } ;


 int VIRTIO_CONSOLE_F_SIZE ;
 int hvc_resize (int ,int ) ;
 int is_console_port (struct port*) ;
 scalar_t__ virtio_has_feature (struct virtio_device*,int ) ;

__attribute__((used)) static void resize_console(struct port *port)
{
 struct virtio_device *vdev;


 if (!port || !is_console_port(port))
  return;

 vdev = port->portdev->vdev;
 if (virtio_has_feature(vdev, VIRTIO_CONSOLE_F_SIZE))
  hvc_resize(port->cons.hvc, port->cons.ws);
}
