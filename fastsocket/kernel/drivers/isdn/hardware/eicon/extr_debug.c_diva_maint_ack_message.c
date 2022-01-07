
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int diva_os_spin_lock_magic_t ;


 scalar_t__ dbg_q_busy ;
 int dbg_q_lock ;
 int dbg_queue ;
 int diva_os_leave_spin_lock (int *,int *,char*) ;
 int queueFreeMsg (int ) ;

void diva_maint_ack_message (int do_release,
                             diva_os_spin_lock_magic_t* old_irql) {
 if (!dbg_q_busy) {
  return;
 }
 if (do_release) {
  queueFreeMsg (dbg_queue);
 }
 dbg_q_busy = 0;
  diva_os_leave_spin_lock (&dbg_q_lock, old_irql, "read_ack");
}
