
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_device {int bgt_name; scalar_t__ thread_enabled; int wl_lock; scalar_t__ ro_mode; int works; } ;


 int TASK_INTERRUPTIBLE ;
 int WL_MAX_FAILURES ;
 int cond_resched () ;
 int current ;
 int dbg_wl (char*,int ) ;
 int do_work (struct ubi_device*) ;
 scalar_t__ kthread_should_stop () ;
 scalar_t__ list_empty (int *) ;
 int schedule () ;
 int set_current_state (int ) ;
 int set_freezable () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int task_pid_nr (int ) ;
 scalar_t__ try_to_freeze () ;
 int ubi_err (char*,int ,int) ;
 int ubi_msg (char*,int ,int ) ;
 int ubi_ro_mode (struct ubi_device*) ;

int ubi_thread(void *u)
{
 int failures = 0;
 struct ubi_device *ubi = u;

 ubi_msg("background thread \"%s\" started, PID %d",
  ubi->bgt_name, task_pid_nr(current));

 set_freezable();
 for (;;) {
  int err;

  if (kthread_should_stop())
   break;

  if (try_to_freeze())
   continue;

  spin_lock(&ubi->wl_lock);
  if (list_empty(&ubi->works) || ubi->ro_mode ||
          !ubi->thread_enabled) {
   set_current_state(TASK_INTERRUPTIBLE);
   spin_unlock(&ubi->wl_lock);
   schedule();
   continue;
  }
  spin_unlock(&ubi->wl_lock);

  err = do_work(ubi);
  if (err) {
   ubi_err("%s: work failed with error code %d",
    ubi->bgt_name, err);
   if (failures++ > WL_MAX_FAILURES) {




    ubi_msg("%s: %d consecutive failures",
     ubi->bgt_name, WL_MAX_FAILURES);
    ubi_ro_mode(ubi);
    ubi->thread_enabled = 0;
    continue;
   }
  } else
   failures = 0;

  cond_resched();
 }

 dbg_wl("background thread \"%s\" is killed", ubi->bgt_name);
 return 0;
}
