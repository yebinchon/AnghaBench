
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pmdval_t ;
typedef int pmd_t ;


 int _PAGE_PRESENT ;
 int __pmd (int) ;
 int pmd_val (int ) ;
 int set_pmd (int *,int ) ;

__attribute__((used)) static void clear_pmd_presence(pmd_t *pmd, bool clear, pmdval_t *old)
{
 pmdval_t v = pmd_val(*pmd);
 if (clear) {
  *old = v & _PAGE_PRESENT;
  v &= ~_PAGE_PRESENT;
 } else
  v |= *old;
 set_pmd(pmd, __pmd(v));
}
