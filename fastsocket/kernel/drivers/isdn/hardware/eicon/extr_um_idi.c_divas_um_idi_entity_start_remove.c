
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* X; scalar_t__ ReqCh; int Req; int Id; } ;
struct TYPE_8__ {int status; TYPE_5__ e; TYPE_4__* adapter; scalar_t__ rc_count; } ;
typedef TYPE_3__ divas_um_idi_entity_t ;
struct TYPE_7__ {int (* request ) (TYPE_5__*) ;} ;
struct TYPE_9__ {int status; TYPE_2__ d; int adapter_nr; } ;
typedef TYPE_4__ diva_um_idi_adapter_t ;
typedef int diva_os_spin_lock_magic_t ;
struct TYPE_6__ {int PLength; } ;


 int DBG_TRC (char*) ;
 int DIVA_UM_IDI_ADAPTER_REMOVED ;
 int DIVA_UM_IDI_REMOVED ;
 int REMOVE ;
 int adapter_lock ;
 int diva_os_enter_spin_lock (int *,int *,char*) ;
 int diva_os_leave_spin_lock (int *,int *,char*) ;
 int stub1 (TYPE_5__*) ;

int divas_um_idi_entity_start_remove(void *entity)
{
 divas_um_idi_entity_t *e;
 diva_um_idi_adapter_t *a;
 diva_os_spin_lock_magic_t old_irql;

 diva_os_enter_spin_lock(&adapter_lock, &old_irql, "start_remove");

 e = (divas_um_idi_entity_t *) entity;
 if (!e || (!(a = e->adapter)) ||
     (e->status & DIVA_UM_IDI_REMOVED) ||
     (a->status & DIVA_UM_IDI_ADAPTER_REMOVED)) {
  diva_os_leave_spin_lock(&adapter_lock, &old_irql, "start_remove");
  return (0);
 }

 if (e->rc_count) {



  diva_os_leave_spin_lock(&adapter_lock, &old_irql, "start_remove");
  return (1);
 }

 if (!e->e.Id) {



  diva_os_leave_spin_lock(&adapter_lock, &old_irql, "start_remove");
  return (0);
 }




 e->e.Req = REMOVE;
 e->e.ReqCh = 0;

 e->rc_count++;

 DBG_TRC(("A(%d) E(%08x) request(%02x-%02x-%02x (%d))",
   e->adapter->adapter_nr, e, e->e.Id, e->e.Req,
   e->e.ReqCh, e->e.X->PLength));

 if (a->d.request)
  (*(a->d.request)) (&e->e);

 diva_os_leave_spin_lock(&adapter_lock, &old_irql, "start_remove");

 return (0);
}
