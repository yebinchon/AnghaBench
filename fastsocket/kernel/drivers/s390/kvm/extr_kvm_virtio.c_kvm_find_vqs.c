
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vq_callback_t ;
struct virtqueue {int dummy; } ;
struct virtio_device {int dummy; } ;
struct kvm_device {TYPE_1__* desc; } ;
struct TYPE_2__ {unsigned int num_vq; } ;


 int ENOENT ;
 scalar_t__ IS_ERR (struct virtqueue*) ;
 int PTR_ERR (struct virtqueue*) ;
 int kvm_del_vqs (struct virtio_device*) ;
 struct virtqueue* kvm_find_vq (struct virtio_device*,int,int *,char const*) ;
 struct kvm_device* to_kvmdev (struct virtio_device*) ;

__attribute__((used)) static int kvm_find_vqs(struct virtio_device *vdev, unsigned nvqs,
   struct virtqueue *vqs[],
   vq_callback_t *callbacks[],
   const char *names[])
{
 struct kvm_device *kdev = to_kvmdev(vdev);
 int i;


 if (nvqs > kdev->desc->num_vq)
  return -ENOENT;

 for (i = 0; i < nvqs; ++i) {
  vqs[i] = kvm_find_vq(vdev, i, callbacks[i], names[i]);
  if (IS_ERR(vqs[i]))
   goto error;
 }
 return 0;

error:
 kvm_del_vqs(vdev);
 return PTR_ERR(vqs[i]);
}
