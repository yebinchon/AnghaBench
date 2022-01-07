
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlbe {int mas1; int mas7; int mas3; int mas2; } ;
struct kvmppc_vcpu_e500 {int* guest_tlb_size; int* shadow_tlb_size; struct tlbe** shadow_tlb; struct tlbe** guest_tlb; } ;
struct kvm_vcpu {int dummy; } ;


 int MAS1_VALID ;
 int printk (char*,...) ;
 struct kvmppc_vcpu_e500* to_e500 (struct kvm_vcpu*) ;

void kvmppc_dump_tlbs(struct kvm_vcpu *vcpu)
{
 struct kvmppc_vcpu_e500 *vcpu_e500 = to_e500(vcpu);
 struct tlbe *tlbe;
 int i, tlbsel;

 printk("| %8s | %8s | %8s | %8s | %8s |\n",
   "nr", "mas1", "mas2", "mas3", "mas7");

 for (tlbsel = 0; tlbsel < 2; tlbsel++) {
  printk("Guest TLB%d:\n", tlbsel);
  for (i = 0; i < vcpu_e500->guest_tlb_size[tlbsel]; i++) {
   tlbe = &vcpu_e500->guest_tlb[tlbsel][i];
   if (tlbe->mas1 & MAS1_VALID)
    printk(" G[%d][%3d] |  %08X | %08X | %08X | %08X |\n",
     tlbsel, i, tlbe->mas1, tlbe->mas2,
     tlbe->mas3, tlbe->mas7);
  }
 }

 for (tlbsel = 0; tlbsel < 2; tlbsel++) {
  printk("Shadow TLB%d:\n", tlbsel);
  for (i = 0; i < vcpu_e500->shadow_tlb_size[tlbsel]; i++) {
   tlbe = &vcpu_e500->shadow_tlb[tlbsel][i];
   if (tlbe->mas1 & MAS1_VALID)
    printk(" S[%d][%3d] |  %08X | %08X | %08X | %08X |\n",
     tlbsel, i, tlbe->mas1, tlbe->mas2,
     tlbe->mas3, tlbe->mas7);
  }
 }
}
