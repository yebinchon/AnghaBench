
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long cr4; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 unsigned long X86_CR4_PAE ;
 unsigned long X86_CR4_PSE ;
 int is_paging (struct kvm_vcpu*) ;

__attribute__((used)) static void ept_update_paging_mode_cr4(unsigned long *hw_cr4,
     struct kvm_vcpu *vcpu)
{
 if (!is_paging(vcpu)) {
  *hw_cr4 &= ~X86_CR4_PAE;
  *hw_cr4 |= X86_CR4_PSE;
 } else if (!(vcpu->arch.cr4 & X86_CR4_PAE))
  *hw_cr4 &= ~X86_CR4_PAE;
}
