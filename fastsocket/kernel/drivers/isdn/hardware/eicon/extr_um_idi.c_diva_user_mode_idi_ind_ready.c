
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int count; } ;
struct TYPE_5__ {int count; } ;
struct TYPE_7__ {int status; TYPE_2__ rc; TYPE_1__ data; TYPE_4__* adapter; } ;
typedef TYPE_3__ divas_um_idi_entity_t ;
struct TYPE_8__ {int status; } ;
typedef TYPE_4__ diva_um_idi_adapter_t ;
typedef int diva_os_spin_lock_magic_t ;


 int DIVA_UM_IDI_ADAPTER_REMOVED ;
 int DIVA_UM_IDI_RC_PENDING ;
 int DIVA_UM_IDI_REMOVED ;
 int adapter_lock ;
 int diva_os_enter_spin_lock (int *,int *,char*) ;
 int diva_os_leave_spin_lock (int *,int *,char*) ;

int diva_user_mode_idi_ind_ready(void *entity, void *os_handle)
{
 divas_um_idi_entity_t *e;
 diva_um_idi_adapter_t *a;
 diva_os_spin_lock_magic_t old_irql;
 int ret;

 if (!entity)
  return (-1);
 diva_os_enter_spin_lock(&adapter_lock, &old_irql, "ind_ready");
 e = (divas_um_idi_entity_t *) entity;
 a = e->adapter;

 if ((!a) || (a->status & DIVA_UM_IDI_ADAPTER_REMOVED)) {



  diva_os_leave_spin_lock(&adapter_lock, &old_irql, "ind_ready");
  return (-1);
 }
 if (e->status & DIVA_UM_IDI_REMOVED) {




  diva_os_leave_spin_lock(&adapter_lock, &old_irql, "ind_ready");
  return (-1);
 }

 ret = e->rc.count + e->data.count;

 if ((e->status & DIVA_UM_IDI_RC_PENDING) && !e->rc.count) {
  ret = 0;
 }

 diva_os_leave_spin_lock(&adapter_lock, &old_irql, "ind_ready");

 return (ret);
}
