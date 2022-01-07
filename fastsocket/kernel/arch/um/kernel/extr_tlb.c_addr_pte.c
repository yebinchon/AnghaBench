
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int mm; } ;
typedef int pud_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgd_t ;


 int * pgd_offset (int ,unsigned long) ;
 int * pmd_offset (int *,unsigned long) ;
 int * pte_offset_map (int *,unsigned long) ;
 int * pud_offset (int *,unsigned long) ;

pte_t *addr_pte(struct task_struct *task, unsigned long addr)
{
 pgd_t *pgd = pgd_offset(task->mm, addr);
 pud_t *pud = pud_offset(pgd, addr);
 pmd_t *pmd = pmd_offset(pud, addr);

 return pte_offset_map(pmd, addr);
}
