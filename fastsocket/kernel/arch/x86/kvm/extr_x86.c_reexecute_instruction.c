
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int kvm; } ;
typedef int gva_t ;
typedef int gpa_t ;


 int PAGE_SHIFT ;
 int UNMAPPED_GVA ;
 int gfn_to_hva (int ,int) ;
 int kvm_is_error_hva (int ) ;
 int kvm_mmu_gva_to_gpa_system (struct kvm_vcpu*,int ,int *) ;
 scalar_t__ kvm_mmu_unprotect_page_virt (struct kvm_vcpu*,int ) ;
 scalar_t__ tdp_enabled ;

__attribute__((used)) static bool reexecute_instruction(struct kvm_vcpu *vcpu, gva_t gva)
{
 gpa_t gpa;

 if (tdp_enabled)
  return 0;





 if (kvm_mmu_unprotect_page_virt(vcpu, gva))
  return 1;

 gpa = kvm_mmu_gva_to_gpa_system(vcpu, gva, ((void*)0));

 if (gpa == UNMAPPED_GVA)
  return 1;

 if (!kvm_is_error_hva(gfn_to_hva(vcpu->kvm, gpa >> PAGE_SHIFT)))
  return 1;

 return 0;
}
