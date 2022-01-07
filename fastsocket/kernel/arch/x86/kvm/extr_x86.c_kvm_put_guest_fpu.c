
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int fpu_reload; } ;
struct TYPE_3__ {int guest_fpu; } ;
struct kvm_vcpu {int requests; TYPE_2__ stat; TYPE_1__ arch; scalar_t__ guest_fpu_loaded; } ;


 int KVM_REQ_DEACTIVATE_FPU ;
 int fpu_save_init (int *) ;
 int kernel_fpu_end () ;
 int kvm_put_guest_xcr0 (struct kvm_vcpu*) ;
 int set_bit (int ,int *) ;

void kvm_put_guest_fpu(struct kvm_vcpu *vcpu)
{
 kvm_put_guest_xcr0(vcpu);

 if (!vcpu->guest_fpu_loaded)
  return;

 vcpu->guest_fpu_loaded = 0;
 fpu_save_init(&vcpu->arch.guest_fpu);
 kernel_fpu_end();
 ++vcpu->stat.fpu_reload;
 set_bit(KVM_REQ_DEACTIVATE_FPU, &vcpu->requests);
}
