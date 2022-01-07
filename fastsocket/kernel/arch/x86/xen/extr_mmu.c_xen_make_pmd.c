
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pmdval_t ;
typedef int pmd_t ;


 int native_make_pmd (int ) ;
 int pte_pfn_to_mfn (int ) ;

pmd_t xen_make_pmd(pmdval_t pmd)
{
 pmd = pte_pfn_to_mfn(pmd);
 return native_make_pmd(pmd);
}
