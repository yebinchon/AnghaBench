
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct kvm_pv_mmu_op_buffer {int dummy; } ;
struct kvm_mmu_op_write_pte {int pte_val; int pte_phys; } ;
struct kvm_mmu_op_release_pt {int pt_phys; } ;
struct kvm_mmu_op_header {int op; } ;
struct kvm_mmu_op_flush_tlb {int dummy; } ;





 int kvm_pv_mmu_flush_tlb (struct kvm_vcpu*) ;
 int kvm_pv_mmu_release_pt (struct kvm_vcpu*,int ) ;
 int kvm_pv_mmu_write (struct kvm_vcpu*,int ,int ) ;
 struct kvm_mmu_op_header* pv_mmu_peek_buffer (struct kvm_pv_mmu_op_buffer*,int) ;
 void* pv_mmu_read_buffer (struct kvm_pv_mmu_op_buffer*,int) ;

__attribute__((used)) static int kvm_pv_mmu_op_one(struct kvm_vcpu *vcpu,
        struct kvm_pv_mmu_op_buffer *buffer)
{
 struct kvm_mmu_op_header *header;

 header = pv_mmu_peek_buffer(buffer, sizeof *header);
 if (!header)
  return 0;
 switch (header->op) {
 case 128: {
  struct kvm_mmu_op_write_pte *wpte;

  wpte = pv_mmu_read_buffer(buffer, sizeof *wpte);
  if (!wpte)
   return 0;
  return kvm_pv_mmu_write(vcpu, wpte->pte_phys,
     wpte->pte_val);
 }
 case 130: {
  struct kvm_mmu_op_flush_tlb *ftlb;

  ftlb = pv_mmu_read_buffer(buffer, sizeof *ftlb);
  if (!ftlb)
   return 0;
  return kvm_pv_mmu_flush_tlb(vcpu);
 }
 case 129: {
  struct kvm_mmu_op_release_pt *rpt;

  rpt = pv_mmu_read_buffer(buffer, sizeof *rpt);
  if (!rpt)
   return 0;
  return kvm_pv_mmu_release_pt(vcpu, rpt->pt_phys);
 }
 default: return 0;
 }
}
