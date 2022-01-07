
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvmppc_vcpu_e500 {int mas2; } ;


 int KVM_E500_TLB0_WAY_NUM_BIT ;
 unsigned int KVM_E500_TLB0_WAY_NUM_MASK ;
 int KVM_E500_TLB0_WAY_SIZE_MASK ;
 int KVM_E500_TLB1_SIZE ;
 unsigned int get_tlb_esel_bit (struct kvmppc_vcpu_e500 const*) ;

__attribute__((used)) static inline unsigned int get_tlb_esel(
  const struct kvmppc_vcpu_e500 *vcpu_e500,
  int tlbsel)
{
 unsigned int esel = get_tlb_esel_bit(vcpu_e500);

 if (tlbsel == 0) {
  esel &= KVM_E500_TLB0_WAY_NUM_MASK;
  esel |= ((vcpu_e500->mas2 >> 12) & KVM_E500_TLB0_WAY_SIZE_MASK)
    << KVM_E500_TLB0_WAY_NUM_BIT;
 } else {
  esel &= KVM_E500_TLB1_SIZE - 1;
 }

 return esel;
}
