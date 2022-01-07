
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pud_t ;
typedef int pmd_t ;


 int * pmd_offset (int *,unsigned long) ;

pmd_t *pmd_offset_proc(pud_t *pud, unsigned long address)
{
 return pmd_offset(pud, address);
}
