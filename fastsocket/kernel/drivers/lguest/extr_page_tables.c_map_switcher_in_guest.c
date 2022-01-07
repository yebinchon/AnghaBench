
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lguest_pages {int dummy; } ;
struct lg_cpu {size_t cpu_pgd; int * regs_page; TYPE_2__* lg; } ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgd_t ;
struct TYPE_4__ {TYPE_1__* pgdirs; } ;
struct TYPE_3__ {int * pgdir; } ;


 int PAGE_KERNEL ;
 int PAGE_KERNEL_EXEC ;
 int PAGE_SHIFT ;
 size_t SWITCHER_PGD_INDEX ;
 size_t SWITCHER_PMD_INDEX ;
 int __PAGE_KERNEL_EXEC ;
 int * __get_cpu_var (int ) ;
 int __pa (int *) ;
 int __pgd (int) ;
 int * __va (int) ;
 int pfn_pmd (int,int ) ;
 int pfn_pte (int,int ) ;
 int pgd_pfn (int ) ;
 size_t pte_index (unsigned long) ;
 int set_pmd (int *,int ) ;
 int set_pte (int *,int ) ;
 int switcher_pte_pages ;

void map_switcher_in_guest(struct lg_cpu *cpu, struct lguest_pages *pages)
{
 pte_t *switcher_pte_page = __get_cpu_var(switcher_pte_pages);
 pte_t regs_pte;
 pgd_t switcher_pgd;





 switcher_pgd = __pgd(__pa(switcher_pte_page) | __PAGE_KERNEL_EXEC);

 cpu->lg->pgdirs[cpu->cpu_pgd].pgdir[SWITCHER_PGD_INDEX] = switcher_pgd;
 regs_pte = pfn_pte(__pa(cpu->regs_page) >> PAGE_SHIFT, PAGE_KERNEL);
 set_pte(&switcher_pte_page[pte_index((unsigned long)pages)], regs_pte);
}
