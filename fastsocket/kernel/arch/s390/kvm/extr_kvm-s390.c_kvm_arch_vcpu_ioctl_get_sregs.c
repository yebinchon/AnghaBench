
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* sie_block; int guest_acrs; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct kvm_sregs {int crs; int acrs; } ;
struct TYPE_3__ {int gcr; } ;


 int memcpy (int *,int *,int) ;
 int vcpu_load (struct kvm_vcpu*) ;
 int vcpu_put (struct kvm_vcpu*) ;

int kvm_arch_vcpu_ioctl_get_sregs(struct kvm_vcpu *vcpu,
      struct kvm_sregs *sregs)
{
 vcpu_load(vcpu);
 memcpy(&sregs->acrs, &vcpu->arch.guest_acrs, sizeof(sregs->acrs));
 memcpy(&sregs->crs, &vcpu->arch.sie_block->gcr, sizeof(sregs->crs));
 vcpu_put(vcpu);
 return 0;
}
