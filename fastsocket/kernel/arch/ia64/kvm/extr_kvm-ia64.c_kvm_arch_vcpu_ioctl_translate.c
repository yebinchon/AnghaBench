
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct kvm_translation {int dummy; } ;


 int EINVAL ;

int kvm_arch_vcpu_ioctl_translate(struct kvm_vcpu *vcpu,
  struct kvm_translation *tr)
{

 return -EINVAL;
}
