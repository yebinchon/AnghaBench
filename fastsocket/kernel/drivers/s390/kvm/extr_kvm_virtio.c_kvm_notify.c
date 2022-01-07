
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtqueue {struct kvm_vqconfig* priv; } ;
struct kvm_vqconfig {int address; } ;


 int KVM_S390_VIRTIO_NOTIFY ;
 int kvm_hypercall1 (int ,int ) ;

__attribute__((used)) static void kvm_notify(struct virtqueue *vq)
{
 struct kvm_vqconfig *config = vq->priv;

 kvm_hypercall1(KVM_S390_VIRTIO_NOTIFY, config->address);
}
