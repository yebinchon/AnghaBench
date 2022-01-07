
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct virtio_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* desc; } ;
struct TYPE_3__ {scalar_t__ status; } ;


 int BUG_ON (int) ;
 int KVM_S390_VIRTIO_SET_STATUS ;
 int kvm_hypercall1 (int ,unsigned long) ;
 TYPE_2__* to_kvmdev (struct virtio_device*) ;

__attribute__((used)) static void kvm_set_status(struct virtio_device *vdev, u8 status)
{
 BUG_ON(!status);
 to_kvmdev(vdev)->desc->status = status;
 kvm_hypercall1(KVM_S390_VIRTIO_SET_STATUS,
         (unsigned long) to_kvmdev(vdev)->desc);
}
