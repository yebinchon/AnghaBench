
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int POLL_IN ;
 int SIGIO ;
 scalar_t__ WDOG_PREOP_GIVE_DATA ;
 scalar_t__ WDOG_PREOP_PANIC ;
 scalar_t__ WDOG_PRETIMEOUT_NONE ;
 scalar_t__ atomic_inc_and_test (int *) ;
 int data_to_read ;
 int fasync_q ;
 int ipmi_read_lock ;
 int kill_fasync (int *,int ,int ) ;
 int panic (char*) ;
 scalar_t__ preaction_val ;
 int preop_panic_excl ;
 scalar_t__ preop_val ;
 int pretimeout_since_last_heartbeat ;
 int read_q ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void ipmi_wdog_pretimeout_handler(void *handler_data)
{
 if (preaction_val != WDOG_PRETIMEOUT_NONE) {
  if (preop_val == WDOG_PREOP_PANIC) {
   if (atomic_inc_and_test(&preop_panic_excl))
    panic("Watchdog pre-timeout");
  } else if (preop_val == WDOG_PREOP_GIVE_DATA) {
   spin_lock(&ipmi_read_lock);
   data_to_read = 1;
   wake_up_interruptible(&read_q);
   kill_fasync(&fasync_q, SIGIO, POLL_IN);

   spin_unlock(&ipmi_read_lock);
  }
 }





 pretimeout_since_last_heartbeat = 1;
}
