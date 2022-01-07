
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct kvm_cpuid_entry2 {scalar_t__ function; int flags; scalar_t__ index; } ;


 int KVM_CPUID_FLAG_SIGNIFCANT_INDEX ;
 int KVM_CPUID_FLAG_STATEFUL_FUNC ;
 int KVM_CPUID_FLAG_STATE_READ_NEXT ;

__attribute__((used)) static int is_matching_cpuid_entry(struct kvm_cpuid_entry2 *e,
 u32 function, u32 index)
{
 if (e->function != function)
  return 0;
 if ((e->flags & KVM_CPUID_FLAG_SIGNIFCANT_INDEX) && e->index != index)
  return 0;
 if ((e->flags & KVM_CPUID_FLAG_STATEFUL_FUNC) &&
     !(e->flags & KVM_CPUID_FLAG_STATE_READ_NEXT))
  return 0;
 return 1;
}
