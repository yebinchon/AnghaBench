
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pgdval_t ;
struct TYPE_3__ {int pgd; } ;
typedef TYPE_1__ pgd_t ;


 int pte_mfn_to_pfn (int ) ;

pgdval_t xen_pgd_val(pgd_t pgd)
{
 return pte_mfn_to_pfn(pgd.pgd);
}
