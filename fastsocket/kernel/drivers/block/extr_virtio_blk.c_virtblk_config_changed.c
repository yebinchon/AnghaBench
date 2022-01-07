
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_device {struct virtio_blk* priv; } ;
struct virtio_blk {int config_work; } ;


 int queue_work (int ,int *) ;
 int virtblk_wq ;

__attribute__((used)) static void virtblk_config_changed(struct virtio_device *vdev)
{
 struct virtio_blk *vblk = vdev->priv;

 queue_work(virtblk_wq, &vblk->config_work);
}
