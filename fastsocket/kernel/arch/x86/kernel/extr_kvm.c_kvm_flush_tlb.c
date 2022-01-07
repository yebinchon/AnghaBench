
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int op; } ;
struct kvm_mmu_op_flush_tlb {TYPE_1__ header; } ;


 int KVM_MMU_OP_FLUSH_TLB ;
 int kvm_deferred_mmu_op (struct kvm_mmu_op_flush_tlb*,int) ;

__attribute__((used)) static void kvm_flush_tlb(void)
{
 struct kvm_mmu_op_flush_tlb ftlb = {
  .header.op = KVM_MMU_OP_FLUSH_TLB,
 };

 kvm_deferred_mmu_op(&ftlb, sizeof ftlb);
}
