
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int nfy ;
typedef int diva_os_spin_lock_magic_t ;
struct TYPE_5__ {int context; int (* callback ) (int ,int *,int) ;} ;
typedef TYPE_1__ didd_adapter_change_notification_t ;
struct TYPE_6__ {scalar_t__ callback; } ;
typedef int DESCRIPTOR ;


 int DIVA_DIDD_MAX_NOTIFICATIONS ;
 TYPE_3__* NotificationTable ;
 int didd_spin ;
 int diva_os_enter_spin_lock (int *,int *,char*) ;
 int diva_os_leave_spin_lock (int *,int *,char*) ;
 int memcpy (TYPE_1__*,TYPE_3__*,int) ;
 int stub1 (int ,int *,int) ;

__attribute__((used)) static void diva_notify_adapter_change (DESCRIPTOR* d, int removal) {
 int i, do_notify;
 didd_adapter_change_notification_t nfy;
 diva_os_spin_lock_magic_t irql;
 for (i = 0; i < DIVA_DIDD_MAX_NOTIFICATIONS; i++) {
  do_notify = 0;
  diva_os_enter_spin_lock (&didd_spin, &irql, "didd_nfy");
  if (NotificationTable[i].callback) {
   memcpy (&nfy, &NotificationTable[i], sizeof(nfy));
   do_notify = 1;
  }
  diva_os_leave_spin_lock (&didd_spin, &irql, "didd_nfy");
  if (do_notify) {
   (*(nfy.callback))(nfy.context, d, removal);
  }
 }
}
