
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dec_timer; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int kvmppc_decrementer_func ;
 int setup_timer (int *,int ,unsigned long) ;

int kvm_arch_vcpu_init(struct kvm_vcpu *vcpu)
{
 setup_timer(&vcpu->arch.dec_timer, kvmppc_decrementer_func,
             (unsigned long)vcpu);

 return 0;
}
