
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int have_fixed; } ;
struct TYPE_5__ {TYPE_1__ mtrr_state; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct TYPE_6__ {int (* vcpu_free ) (struct kvm_vcpu*) ;} ;


 int kvm_arch_vcpu_reset (struct kvm_vcpu*) ;
 int kvm_mmu_setup (struct kvm_vcpu*) ;
 TYPE_3__* kvm_x86_ops ;
 int stub1 (struct kvm_vcpu*) ;
 int vcpu_load (struct kvm_vcpu*) ;
 int vcpu_put (struct kvm_vcpu*) ;

int kvm_arch_vcpu_setup(struct kvm_vcpu *vcpu)
{
 int r;

 vcpu->arch.mtrr_state.have_fixed = 1;
 vcpu_load(vcpu);
 r = kvm_arch_vcpu_reset(vcpu);
 if (r == 0)
  r = kvm_mmu_setup(vcpu);
 vcpu_put(vcpu);
 if (r < 0)
  goto free_vcpu;

 return 0;
free_vcpu:
 kvm_x86_ops->vcpu_free(vcpu);
 return r;
}
