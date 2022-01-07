
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vcpu {int kvm; } ;
struct TYPE_2__ {int (* patch_hypercall ) (struct kvm_vcpu*,char*) ;} ;


 int EFAULT ;
 scalar_t__ X86EMUL_CONTINUE ;
 scalar_t__ emulator_write_emulated (unsigned long,char*,int,struct kvm_vcpu*) ;
 int kvm_mmu_zap_all (int ) ;
 unsigned long kvm_rip_read (struct kvm_vcpu*) ;
 TYPE_1__* kvm_x86_ops ;
 int stub1 (struct kvm_vcpu*,char*) ;

int kvm_fix_hypercall(struct kvm_vcpu *vcpu)
{
 char instruction[3];
 int ret = 0;
 unsigned long rip = kvm_rip_read(vcpu);







 kvm_mmu_zap_all(vcpu->kvm);

 kvm_x86_ops->patch_hypercall(vcpu, instruction);
 if (emulator_write_emulated(rip, instruction, 3, vcpu)
     != X86EMUL_CONTINUE)
  ret = -EFAULT;

 return ret;
}
