
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int op; } ;
struct kvm_mmu_op_release_pt {int pt_phys; TYPE_1__ header; } ;


 int KVM_MMU_OP_RELEASE_PT ;
 int PAGE_SHIFT ;
 int kvm_mmu_op (struct kvm_mmu_op_release_pt*,int) ;

__attribute__((used)) static void kvm_release_pt(unsigned long pfn)
{
 struct kvm_mmu_op_release_pt rpt = {
  .header.op = KVM_MMU_OP_RELEASE_PT,
  .pt_phys = (u64)pfn << PAGE_SHIFT,
 };

 kvm_mmu_op(&rpt, sizeof rpt);
}
