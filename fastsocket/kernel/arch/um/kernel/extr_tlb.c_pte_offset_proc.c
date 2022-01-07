
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;
typedef int pmd_t ;


 int * pte_offset_kernel (int *,unsigned long) ;

pte_t *pte_offset_proc(pmd_t *pmd, unsigned long address)
{
 return pte_offset_kernel(pmd, address);
}
