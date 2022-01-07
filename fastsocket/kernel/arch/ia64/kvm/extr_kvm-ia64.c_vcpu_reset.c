
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ launched; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int kvm_arch_vcpu_init (struct kvm_vcpu*) ;
 int kvm_arch_vcpu_uninit (struct kvm_vcpu*) ;
 int kvm_insert_vmm_mapping (struct kvm_vcpu*) ;
 int kvm_purge_vmm_mapping (struct kvm_vcpu*) ;
 int local_irq_restore (long) ;
 int local_irq_save (long) ;

__attribute__((used)) static int vcpu_reset(struct kvm_vcpu *vcpu)
{
 int r;
 long psr;
 local_irq_save(psr);
 r = kvm_insert_vmm_mapping(vcpu);
 local_irq_restore(psr);
 if (r)
  goto fail;

 vcpu->arch.launched = 0;
 kvm_arch_vcpu_uninit(vcpu);
 r = kvm_arch_vcpu_init(vcpu);
 if (r)
  goto fail;

 kvm_purge_vmm_mapping(vcpu);
 r = 0;
fail:
 return r;
}
