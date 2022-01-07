
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;


 int pte_clear (int *,int ,int *) ;

__attribute__((used)) static void pgd_ctor(void *addr)
{
 pte_t *ptep = (pte_t *)addr;
 int i;

 for (i = 0; i < 1024; i++, ptep++)
  pte_clear(((void*)0), 0, ptep);

}
