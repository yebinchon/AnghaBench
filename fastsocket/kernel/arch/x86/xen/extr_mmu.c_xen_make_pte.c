
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pteval_t ;
typedef int pte_t ;


 int native_make_pte (int ) ;
 int pte_pfn_to_mfn (int ) ;

pte_t xen_make_pte(pteval_t pte)
{
 pte = pte_pfn_to_mfn(pte);
 return native_make_pte(pte);
}
