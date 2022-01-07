
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* os_context; int link; int * adapter; } ;
typedef TYPE_1__ divas_um_idi_entity_t ;
typedef int diva_um_idi_adapter_t ;
typedef int diva_os_spin_lock_magic_t ;


 int DBG_LOG (char*) ;
 int adapter_lock ;
 int cleanup_entity (TYPE_1__*) ;
 int diva_os_enter_spin_lock (int *,int *,char*) ;
 int diva_os_free (int ,TYPE_1__*) ;
 int diva_os_leave_spin_lock (int *,int *,char*) ;
 int diva_um_idi_stop_wdog (void*) ;
 int list_del (int *) ;
 int memset (TYPE_1__*,int,int) ;

int divas_um_idi_delete_entity(int adapter_nr, void *entity)
{
 divas_um_idi_entity_t *e;
 diva_um_idi_adapter_t *a;
 diva_os_spin_lock_magic_t old_irql;

 if (!(e = (divas_um_idi_entity_t *) entity))
  return (-1);

 diva_os_enter_spin_lock(&adapter_lock, &old_irql, "delete_entity");
 if ((a = e->adapter)) {
  list_del(&e->link);
 }
 diva_os_leave_spin_lock(&adapter_lock, &old_irql, "delete_entity");

 diva_um_idi_stop_wdog(entity);
 cleanup_entity(e);
 diva_os_free(0, e->os_context);
 memset(e, 0x00, sizeof(*e));
 diva_os_free(0, e);

 DBG_LOG(("A(%d) remove E:%08x", adapter_nr, e));

 return (0);
}
