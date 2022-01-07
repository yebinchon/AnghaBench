
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int link; } ;
typedef TYPE_1__ diva_os_xdi_adapter_t ;
typedef int diva_os_spin_lock_magic_t ;


 int adapter_lock ;
 int adapter_queue ;
 int diva_os_enter_spin_lock (int *,int *,char*) ;
 int diva_os_leave_spin_lock (int *,int *,char*) ;
 int list_add_tail (int *,int *) ;

void diva_add_slave_adapter(diva_os_xdi_adapter_t * a)
{
 diva_os_spin_lock_magic_t old_irql;

 diva_os_enter_spin_lock(&adapter_lock, &old_irql, "add_slave");
 list_add_tail(&a->link, &adapter_queue);
 diva_os_leave_spin_lock(&adapter_lock, &old_irql, "add_slave");
}
