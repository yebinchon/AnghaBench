
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct virtio_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* desc; } ;
struct TYPE_3__ {int status; } ;


 int LHCALL_NOTIFY ;
 unsigned long PAGE_SHIFT ;
 int kvm_hypercall1 (int ,unsigned long) ;
 void* lguest_devices ;
 unsigned long max_pfn ;
 TYPE_2__* to_lgdev (struct virtio_device*) ;

__attribute__((used)) static void set_status(struct virtio_device *vdev, u8 status)
{
 unsigned long offset = (void *)to_lgdev(vdev)->desc - lguest_devices;


 to_lgdev(vdev)->desc->status = status;
 kvm_hypercall1(LHCALL_NOTIFY, (max_pfn << PAGE_SHIFT) + offset);
}
