
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pteval_t ;
typedef int pte_t ;


 int _PAGE_PRESENT ;
 int __pte (int) ;
 int pte_val (int ) ;
 int set_pte_atomic (int *,int ) ;

__attribute__((used)) static void clear_pte_presence(pte_t *pte, bool clear, pteval_t *old)
{
 pteval_t v = pte_val(*pte);
 if (clear) {
  *old = v & _PAGE_PRESENT;
  v &= ~_PAGE_PRESENT;
 } else
  v |= *old;
 set_pte_atomic(pte, __pte(v));
}
