
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtio_device {TYPE_1__* config; } ;
struct TYPE_2__ {int (* del_vqs ) (struct virtio_device*) ;int (* reset ) (struct virtio_device*) ;} ;


 int hwrng_unregister (int *) ;
 int stub1 (struct virtio_device*) ;
 int stub2 (struct virtio_device*) ;
 int virtio_hwrng ;
 int * vq ;

__attribute__((used)) static void remove_common(struct virtio_device *vdev)
{
 vdev->config->reset(vdev);
 hwrng_unregister(&virtio_hwrng);
 vdev->config->del_vqs(vdev);
 vq = ((void*)0);
}
