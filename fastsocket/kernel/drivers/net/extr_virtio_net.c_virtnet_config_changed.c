
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtnet_info {int dummy; } ;
struct virtio_device {struct virtnet_info* priv; } ;


 int virtnet_update_status (struct virtnet_info*) ;

__attribute__((used)) static void virtnet_config_changed(struct virtio_device *vdev)
{
 struct virtnet_info *vi = vdev->priv;

 virtnet_update_status(vi);
}
