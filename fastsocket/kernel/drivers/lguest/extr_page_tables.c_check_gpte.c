
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lg_cpu {TYPE_1__* lg; } ;
typedef int pte_t ;
struct TYPE_2__ {scalar_t__ pfn_limit; } ;


 int _PAGE_PSE ;
 int kill_guest (struct lg_cpu*,char*) ;
 int pte_flags (int ) ;
 scalar_t__ pte_pfn (int ) ;

__attribute__((used)) static void check_gpte(struct lg_cpu *cpu, pte_t gpte)
{
 if ((pte_flags(gpte) & _PAGE_PSE) ||
     pte_pfn(gpte) >= cpu->lg->pfn_limit)
  kill_guest(cpu, "bad page table entry");
}
