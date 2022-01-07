
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct kvm_cpuid_entry2 {scalar_t__ flags; int edx; int ecx; int ebx; int eax; void* index; void* function; } ;


 int cpuid_count (void*,void*,int *,int *,int *,int *) ;

__attribute__((used)) static void do_cpuid_1_ent(struct kvm_cpuid_entry2 *entry, u32 function,
      u32 index)
{
 entry->function = function;
 entry->index = index;
 cpuid_count(entry->function, entry->index,
      &entry->eax, &entry->ebx, &entry->ecx, &entry->edx);
 entry->flags = 0;
}
