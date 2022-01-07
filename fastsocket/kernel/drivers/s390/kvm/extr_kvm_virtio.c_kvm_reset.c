
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtio_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ desc; } ;


 int KVM_S390_VIRTIO_RESET ;
 int kvm_hypercall1 (int ,unsigned long) ;
 TYPE_1__* to_kvmdev (struct virtio_device*) ;

__attribute__((used)) static void kvm_reset(struct virtio_device *vdev)
{
 kvm_hypercall1(KVM_S390_VIRTIO_RESET,
         (unsigned long) to_kvmdev(vdev)->desc);
}
