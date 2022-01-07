
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtqueue {struct kvm_vqconfig* priv; } ;
struct kvm_vqconfig {int num; int address; } ;


 int KVM_S390_VIRTIO_RING_ALIGN ;
 int vmem_remove_mapping (int ,int ) ;
 int vring_del_virtqueue (struct virtqueue*) ;
 int vring_size (int ,int ) ;

__attribute__((used)) static void kvm_del_vq(struct virtqueue *vq)
{
 struct kvm_vqconfig *config = vq->priv;

 vring_del_virtqueue(vq);
 vmem_remove_mapping(config->address,
       vring_size(config->num,
           KVM_S390_VIRTIO_RING_ALIGN));
}
