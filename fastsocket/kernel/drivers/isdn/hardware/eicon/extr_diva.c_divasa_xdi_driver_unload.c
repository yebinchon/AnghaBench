
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int (* cleanup_adapter_proc ) (TYPE_2__*) ;} ;
struct TYPE_8__ {int controller; TYPE_1__ interface; } ;
typedef TYPE_2__ diva_os_xdi_adapter_t ;


 int ** IoAdapters ;
 int adapter_lock ;
 int diva_os_destroy_spin_lock (int *,char*) ;
 int diva_os_free (int ,TYPE_2__*) ;
 TYPE_2__* get_and_remove_from_queue () ;
 int remove_adapter_proc (TYPE_2__*) ;
 int stub1 (TYPE_2__*) ;

void divasa_xdi_driver_unload(void)
{
 diva_os_xdi_adapter_t *a;

 while ((a = get_and_remove_from_queue())) {
  if (a->interface.cleanup_adapter_proc) {
   (*(a->interface.cleanup_adapter_proc)) (a);
  }
  if (a->controller) {
   IoAdapters[a->controller - 1] = ((void*)0);
   remove_adapter_proc(a);
  }
  diva_os_free(0, a);
 }
 diva_os_destroy_spin_lock(&adapter_lock, "adapter");
}
