
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtio_device {TYPE_1__* config; } ;
struct TYPE_2__ {int (* del_vqs ) (struct virtio_device*) ;} ;


 int EBUSY ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int hwrng_register (int *) ;
 int random_recv_done ;
 int register_buffer () ;
 int stub1 (struct virtio_device*) ;
 int * virtio_find_single_vq (struct virtio_device*,int ,char*) ;
 int virtio_hwrng ;
 int * vq ;

__attribute__((used)) static int probe_common(struct virtio_device *vdev)
{
 int err;

 if (vq) {

  return -EBUSY;
 }

 vq = virtio_find_single_vq(vdev, random_recv_done, "input");
 if (IS_ERR(vq)) {
  err = PTR_ERR(vq);
  vq = ((void*)0);
  return err;
 }

 err = hwrng_register(&virtio_hwrng);
 if (err) {
  vdev->config->del_vqs(vdev);
  vq = ((void*)0);
  return err;
 }

 register_buffer();
 return 0;
}
