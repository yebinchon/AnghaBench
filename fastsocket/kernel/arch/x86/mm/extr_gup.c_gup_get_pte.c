
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ pte_low; int pte_high; } ;
typedef TYPE_1__ pte_t ;


 TYPE_1__ ACCESS_ONCE (TYPE_1__) ;
 int smp_rmb () ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline pte_t gup_get_pte(pte_t *ptep)
{

 return ACCESS_ONCE(*ptep);
}
