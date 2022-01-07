
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int last_guest_tsc; int last_host_tsc; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct TYPE_4__ {int (* vcpu_put ) (struct kvm_vcpu*) ;} ;


 int MSR_IA32_TSC ;
 int kvm_get_msr (struct kvm_vcpu*,int ,int *) ;
 int kvm_put_guest_fpu (struct kvm_vcpu*) ;
 TYPE_2__* kvm_x86_ops ;
 int native_read_tsc () ;
 int stub1 (struct kvm_vcpu*) ;

void kvm_arch_vcpu_put(struct kvm_vcpu *vcpu)
{
 kvm_put_guest_fpu(vcpu);
 vcpu->arch.last_host_tsc = native_read_tsc();
 kvm_get_msr(vcpu, MSR_IA32_TSC, &vcpu->arch.last_guest_tsc);
 kvm_x86_ops->vcpu_put(vcpu);
}
