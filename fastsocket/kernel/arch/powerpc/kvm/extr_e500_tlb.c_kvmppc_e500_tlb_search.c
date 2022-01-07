
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvmppc_vcpu_e500 {int dummy; } ;
struct kvm_vcpu {int dummy; } ;
typedef int gva_t ;


 int index_of (int,int) ;
 int kvmppc_e500_tlb_index (struct kvmppc_vcpu_e500*,int ,int,unsigned int,int) ;
 struct kvmppc_vcpu_e500* to_e500 (struct kvm_vcpu*) ;

int kvmppc_e500_tlb_search(struct kvm_vcpu *vcpu,
    gva_t eaddr, unsigned int pid, int as)
{
 struct kvmppc_vcpu_e500 *vcpu_e500 = to_e500(vcpu);
 int esel, tlbsel;

 for (tlbsel = 0; tlbsel < 2; tlbsel++) {
  esel = kvmppc_e500_tlb_index(vcpu_e500, eaddr, tlbsel, pid, as);
  if (esel >= 0)
   return index_of(tlbsel, esel);
 }

 return -1;
}
