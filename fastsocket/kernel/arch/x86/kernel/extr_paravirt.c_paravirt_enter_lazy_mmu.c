
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PARAVIRT_LAZY_MMU ;
 int enter_lazy (int ) ;

void paravirt_enter_lazy_mmu(void)
{
 enter_lazy(PARAVIRT_LAZY_MMU);
}
