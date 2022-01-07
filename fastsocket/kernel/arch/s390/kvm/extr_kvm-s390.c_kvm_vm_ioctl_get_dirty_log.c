
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_dirty_log {int dummy; } ;
struct kvm {int dummy; } ;



int kvm_vm_ioctl_get_dirty_log(struct kvm *kvm,
          struct kvm_dirty_log *log)
{
 return 0;
}
