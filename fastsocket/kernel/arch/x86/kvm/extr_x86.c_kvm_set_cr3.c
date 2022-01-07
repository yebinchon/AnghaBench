
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* new_cr3 ) (struct kvm_vcpu*) ;} ;
struct TYPE_4__ {unsigned long cr3; TYPE_1__ mmu; } ;
struct kvm_vcpu {TYPE_2__ arch; int kvm; } ;


 unsigned long CR3_L_MODE_RESERVED_BITS ;
 unsigned long CR3_PAE_RESERVED_BITS ;
 unsigned long CR3_PCID_ENABLED_RESERVED_BITS ;
 unsigned long PAGE_SHIFT ;
 int X86_CR4_PCIDE ;
 int gfn_to_memslot (int ,unsigned long) ;
 scalar_t__ is_long_mode (struct kvm_vcpu*) ;
 scalar_t__ is_pae (struct kvm_vcpu*) ;
 scalar_t__ is_paging (struct kvm_vcpu*) ;
 int kvm_mmu_flush_tlb (struct kvm_vcpu*) ;
 int kvm_mmu_sync_roots (struct kvm_vcpu*) ;
 scalar_t__ kvm_read_cr4_bits (struct kvm_vcpu*,int ) ;
 int load_pdptrs (struct kvm_vcpu*,unsigned long) ;
 int pdptrs_changed (struct kvm_vcpu*) ;
 int stub1 (struct kvm_vcpu*) ;
 scalar_t__ unlikely (int) ;

int kvm_set_cr3(struct kvm_vcpu *vcpu, unsigned long cr3)
{
 if (cr3 == vcpu->arch.cr3 && !pdptrs_changed(vcpu)) {
  kvm_mmu_sync_roots(vcpu);
  kvm_mmu_flush_tlb(vcpu);
  return 0;
 }

 if (is_long_mode(vcpu)) {
  if (kvm_read_cr4_bits(vcpu, X86_CR4_PCIDE)) {
   if (cr3 & CR3_PCID_ENABLED_RESERVED_BITS)
    return 1;
  } else
   if (cr3 & CR3_L_MODE_RESERVED_BITS)
    return 1;
 } else {
  if (is_pae(vcpu)) {
   if (cr3 & CR3_PAE_RESERVED_BITS)
    return 1;
   if (is_paging(vcpu) && !load_pdptrs(vcpu, cr3))
    return 1;
  }




 }
 if (unlikely(!gfn_to_memslot(vcpu->kvm, cr3 >> PAGE_SHIFT)))
  return 1;
 vcpu->arch.cr3 = cr3;
 vcpu->arch.mmu.new_cr3(vcpu);
 return 0;
}
