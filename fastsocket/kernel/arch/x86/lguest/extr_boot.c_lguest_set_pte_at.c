
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pte_t ;


 int lguest_pte_update (struct mm_struct*,unsigned long,int *) ;
 int native_set_pte (int *,int ) ;

__attribute__((used)) static void lguest_set_pte_at(struct mm_struct *mm, unsigned long addr,
         pte_t *ptep, pte_t pteval)
{
 native_set_pte(ptep, pteval);
 lguest_pte_update(mm, addr, ptep);
}
