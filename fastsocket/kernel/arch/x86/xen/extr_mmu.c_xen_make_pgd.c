
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pgdval_t ;
typedef int pgd_t ;


 int native_make_pgd (int ) ;
 int pte_pfn_to_mfn (int ) ;

pgd_t xen_make_pgd(pgdval_t pgd)
{
 pgd = pte_pfn_to_mfn(pgd);
 return native_make_pgd(pgd);
}
