
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_vcpu {int dummy; } ;
typedef enum tlb_miss_type { ____Placeholder_tlb_miss_type } tlb_miss_type ;


 int DATA ;
 int IA64_NAT_CONSUMPTION_VECTOR ;
 int INSTRUCTION ;
 int inject_guest_interruption (struct kvm_vcpu*,int ) ;
 int set_ifa_itir_iha (struct kvm_vcpu*,int ,int,int ,int ) ;

__attribute__((used)) static void _nat_consumption_fault(struct kvm_vcpu *vcpu, u64 vadr,
      enum tlb_miss_type t)
{

 if (t == DATA || t == INSTRUCTION) {

  set_ifa_itir_iha(vcpu, vadr, 1, 0, 0);
 }

 inject_guest_interruption(vcpu, IA64_NAT_CONSUMPTION_VECTOR);
}
