
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int word ;
typedef int diva_os_spin_lock_magic_t ;
typedef int diva_dbg_entry_head_t ;


 int dbg_q_busy ;
 int dbg_q_lock ;
 int dbg_queue ;
 int diva_os_enter_spin_lock (int *,int *,char*) ;
 int diva_os_leave_spin_lock (int *,int *,char*) ;
 scalar_t__ queuePeekMsg (int ,int *) ;

diva_dbg_entry_head_t* diva_maint_get_message (word* size,
                                               diva_os_spin_lock_magic_t* old_irql) {
  diva_dbg_entry_head_t* pmsg = ((void*)0);

  diva_os_enter_spin_lock (&dbg_q_lock, old_irql, "read");
  if (dbg_q_busy) {
    diva_os_leave_spin_lock (&dbg_q_lock, old_irql, "read_busy");
    return ((void*)0);
  }
  dbg_q_busy = 1;

  if (!(pmsg = (diva_dbg_entry_head_t*)queuePeekMsg (dbg_queue, size))) {
    dbg_q_busy = 0;
    diva_os_leave_spin_lock (&dbg_q_lock, old_irql, "read_empty");
  }

  return (pmsg);
}
