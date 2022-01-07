
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct kvm_vcpu {int dummy; } ;
struct kvm_translation {int linear_address; int valid; int physical_address; } ;
typedef int gva_t ;


 int kvmppc_e500_tlb_search (struct kvm_vcpu*,int,int,int) ;
 int kvmppc_mmu_xlate (struct kvm_vcpu*,int,int) ;

int kvmppc_core_vcpu_translate(struct kvm_vcpu *vcpu,
                               struct kvm_translation *tr)
{
 int index;
 gva_t eaddr;
 u8 pid;
 u8 as;

 eaddr = tr->linear_address;
 pid = (tr->linear_address >> 32) & 0xff;
 as = (tr->linear_address >> 40) & 0x1;

 index = kvmppc_e500_tlb_search(vcpu, eaddr, pid, as);
 if (index < 0) {
  tr->valid = 0;
  return 0;
 }

 tr->physical_address = kvmppc_mmu_xlate(vcpu, index, eaddr);

 tr->valid = 1;

 return 0;
}
