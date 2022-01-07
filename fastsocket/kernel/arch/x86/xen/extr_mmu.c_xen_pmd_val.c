
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pmdval_t ;
struct TYPE_3__ {int pmd; } ;
typedef TYPE_1__ pmd_t ;


 int pte_mfn_to_pfn (int ) ;

pmdval_t xen_pmd_val(pmd_t pmd)
{
 return pte_mfn_to_pfn(pmd.pmd);
}
