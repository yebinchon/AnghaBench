
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pte_low; int pte_high; } ;
typedef TYPE_1__ pte_t ;


 int ADD_STATS (int ,int) ;
 scalar_t__ PARAVIRT_LAZY_MMU ;
 scalar_t__ paravirt_get_lazy_mode () ;
 int pte_update ;
 int pte_update_batched ;
 int smp_wmb () ;

void xen_set_pte(pte_t *ptep, pte_t pte)
{
 ADD_STATS(pte_update, 1);

 ADD_STATS(pte_update_batched, paravirt_get_lazy_mode() == PARAVIRT_LAZY_MMU);






 *ptep = pte;

}
