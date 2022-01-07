
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_device {int dummy; } ;


 int set_status (struct virtio_device*,int ) ;

__attribute__((used)) static void lg_reset(struct virtio_device *vdev)
{
 set_status(vdev, 0);
}
