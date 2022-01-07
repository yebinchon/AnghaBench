
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int channels; int features; int type; } ;
struct TYPE_5__ {int adapter_nr; int link; TYPE_2__ d; int entity_q; } ;
typedef TYPE_1__ diva_um_idi_adapter_t ;
typedef int diva_os_spin_lock_magic_t ;
typedef TYPE_2__ DESCRIPTOR ;


 int DBG_LOG (char*) ;
 int INIT_LIST_HEAD (int *) ;
 int adapter_lock ;
 int adapter_q ;
 int diva_os_enter_spin_lock (int *,int *,char*) ;
 int diva_os_leave_spin_lock (int *,int *,char*) ;
 scalar_t__ diva_os_malloc (int ,int) ;
 int list_add_tail (int *,int *) ;
 int memset (TYPE_1__*,int,int) ;

int diva_user_mode_idi_create_adapter(const DESCRIPTOR * d, int adapter_nr)
{
 diva_os_spin_lock_magic_t old_irql;
 diva_um_idi_adapter_t *a =
     (diva_um_idi_adapter_t *) diva_os_malloc(0,
           sizeof
           (diva_um_idi_adapter_t));

 if (!a) {
  return (-1);
 }
 memset(a, 0x00, sizeof(*a));
 INIT_LIST_HEAD(&a->entity_q);

 a->d = *d;
 a->adapter_nr = adapter_nr;

 DBG_LOG(("DIDD_ADD A(%d), type:%02x, features:%04x, channels:%d",
   adapter_nr, a->d.type, a->d.features, a->d.channels));

 diva_os_enter_spin_lock(&adapter_lock, &old_irql, "create_adapter");
 list_add_tail(&a->link, &adapter_q);
 diva_os_leave_spin_lock(&adapter_lock, &old_irql, "create_adapter");
 return (0);
}
