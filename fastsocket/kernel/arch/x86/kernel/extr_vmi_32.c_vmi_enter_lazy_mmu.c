
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* set_lazy_mode ) (int) ;} ;


 int paravirt_enter_lazy_mmu () ;
 int stub1 (int) ;
 TYPE_1__ vmi_ops ;

__attribute__((used)) static void vmi_enter_lazy_mmu(void)
{
 paravirt_enter_lazy_mmu();
 vmi_ops.set_lazy_mode(1);
}
