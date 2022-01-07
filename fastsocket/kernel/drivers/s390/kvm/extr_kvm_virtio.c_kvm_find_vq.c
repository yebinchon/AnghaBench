
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct virtqueue {struct kvm_vqconfig* priv; } ;
struct virtio_device {int dummy; } ;
struct kvm_vqconfig {int num; scalar_t__ address; scalar_t__ token; } ;
struct kvm_device {TYPE_1__* desc; } ;
struct TYPE_2__ {unsigned int num_vq; } ;


 int ENOENT ;
 int ENOMEM ;
 struct virtqueue* ERR_PTR (int) ;
 int KVM_S390_VIRTIO_RING_ALIGN ;
 int kvm_notify ;
 struct kvm_vqconfig* kvm_vq_config (TYPE_1__*) ;
 struct kvm_device* to_kvmdev (struct virtio_device*) ;
 int vmem_add_mapping (scalar_t__,int ) ;
 int vmem_remove_mapping (scalar_t__,int ) ;
 struct virtqueue* vring_new_virtqueue (int ,int ,struct virtio_device*,void*,int ,void (*) (struct virtqueue*),char const*) ;
 int vring_size (int ,int ) ;

__attribute__((used)) static struct virtqueue *kvm_find_vq(struct virtio_device *vdev,
         unsigned index,
         void (*callback)(struct virtqueue *vq),
         const char *name)
{
 struct kvm_device *kdev = to_kvmdev(vdev);
 struct kvm_vqconfig *config;
 struct virtqueue *vq;
 int err;

 if (index >= kdev->desc->num_vq)
  return ERR_PTR(-ENOENT);

 config = kvm_vq_config(kdev->desc)+index;

 err = vmem_add_mapping(config->address,
          vring_size(config->num,
       KVM_S390_VIRTIO_RING_ALIGN));
 if (err)
  goto out;

 vq = vring_new_virtqueue(config->num, KVM_S390_VIRTIO_RING_ALIGN,
     vdev, (void *) config->address,
     kvm_notify, callback, name);
 if (!vq) {
  err = -ENOMEM;
  goto unmap;
 }





 config->token = (u64) vq;

 vq->priv = config;
 return vq;
unmap:
 vmem_remove_mapping(config->address,
       vring_size(config->num,
           KVM_S390_VIRTIO_RING_ALIGN));
out:
 return ERR_PTR(err);
}
