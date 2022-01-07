
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_blk {int vq; int vdev; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int blk_done ;
 int virtio_find_single_vq (int ,int ,char*) ;

__attribute__((used)) static int init_vq(struct virtio_blk *vblk)
{
 int err = 0;


 vblk->vq = virtio_find_single_vq(vblk->vdev, blk_done, "requests");
 if (IS_ERR(vblk->vq))
  err = PTR_ERR(vblk->vq);

 return err;
}
