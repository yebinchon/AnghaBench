
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tlbe {int dummy; } ;
struct TYPE_2__ {int msr; } ;
struct kvm_vcpu {int kvm; TYPE_1__ arch; } ;
typedef int gpa_t ;


 int MSR_IS ;
 int PAGE_SHIFT ;
 int get_tlb_raddr (struct tlbe const*) ;
 int get_tlb_ts (struct tlbe const*) ;
 int get_tlb_v (struct tlbe const*) ;
 int gfn_to_memslot (int ,int) ;

__attribute__((used)) static inline int tlbe_is_host_safe(const struct kvm_vcpu *vcpu,
   const struct tlbe *tlbe)
{
 gpa_t gpa;

 if (!get_tlb_v(tlbe))
  return 0;



 if (get_tlb_ts(tlbe) != !!(vcpu->arch.msr & MSR_IS))
  return 0;

 gpa = get_tlb_raddr(tlbe);
 if (!gfn_to_memslot(vcpu->kvm, gpa >> PAGE_SHIFT))

  return 0;

 return 1;
}
