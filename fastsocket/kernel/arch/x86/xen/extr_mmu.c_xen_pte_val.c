
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pteval_t ;
struct TYPE_3__ {int pte; } ;
typedef TYPE_1__ pte_t ;


 int pte_mfn_to_pfn (int ) ;

pteval_t xen_pte_val(pte_t pte)
{
 return pte_mfn_to_pfn(pte.pte);
}
