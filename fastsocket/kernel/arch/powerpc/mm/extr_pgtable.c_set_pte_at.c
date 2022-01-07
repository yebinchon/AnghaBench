
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pte_t ;


 int WARN_ON (int ) ;
 int __set_pte_at (struct mm_struct*,unsigned long,int *,int ,int ) ;
 int pte_present (int ) ;
 int set_pte_filter (int ,unsigned long) ;

void set_pte_at(struct mm_struct *mm, unsigned long addr, pte_t *ptep,
  pte_t pte)
{







 pte = set_pte_filter(pte, addr);


 __set_pte_at(mm, addr, ptep, pte, 0);
}
