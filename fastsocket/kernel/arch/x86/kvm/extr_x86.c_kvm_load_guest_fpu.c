
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int guest_fpu; } ;
struct kvm_vcpu {int guest_fpu_loaded; TYPE_1__ arch; int fpu_active; } ;


 int fpu_restore_checking (int *) ;
 int kernel_fpu_begin () ;
 int kvm_put_guest_xcr0 (struct kvm_vcpu*) ;

void kvm_load_guest_fpu(struct kvm_vcpu *vcpu)
{
 if (!vcpu->fpu_active || vcpu->guest_fpu_loaded)
  return;






 kvm_put_guest_xcr0(vcpu);
 vcpu->guest_fpu_loaded = 1;
 kernel_fpu_begin();
 fpu_restore_checking(&vcpu->arch.guest_fpu);
}
