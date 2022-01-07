
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lg_cpu {TYPE_1__* lg; } ;
typedef int pte_t ;
struct TYPE_2__ {scalar_t__ mem_base; } ;


 unsigned long PAGE_SIZE ;
 unsigned long _PAGE_GLOBAL ;
 int __pgprot (unsigned long) ;
 unsigned long get_pfn (scalar_t__,int) ;
 int kill_guest (struct lg_cpu*,char*,scalar_t__) ;
 int pfn_pte (unsigned long,int ) ;
 unsigned long pte_flags (int ) ;
 scalar_t__ pte_pfn (int ) ;

__attribute__((used)) static pte_t gpte_to_spte(struct lg_cpu *cpu, pte_t gpte, int write)
{
 unsigned long pfn, base, flags;







 flags = (pte_flags(gpte) & ~_PAGE_GLOBAL);


 base = (unsigned long)cpu->lg->mem_base / PAGE_SIZE;







 pfn = get_pfn(base + pte_pfn(gpte), write);
 if (pfn == -1UL) {
  kill_guest(cpu, "failed to get page %lu", pte_pfn(gpte));





  flags = 0;
 }

 return pfn_pte(pfn, __pgprot(flags));
}
