
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int * ap_poll_kthread ;
 int ap_poll_thread ;
 int ap_poll_thread_mutex ;
 scalar_t__ ap_suspend_flag ;
 scalar_t__ ap_using_interrupts () ;
 int * kthread_run (int ,int *,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ap_poll_thread_start(void)
{
 int rc;

 if (ap_using_interrupts() || ap_suspend_flag)
  return 0;
 mutex_lock(&ap_poll_thread_mutex);
 if (!ap_poll_kthread) {
  ap_poll_kthread = kthread_run(ap_poll_thread, ((void*)0), "appoll");
  rc = IS_ERR(ap_poll_kthread) ? PTR_ERR(ap_poll_kthread) : 0;
  if (rc)
   ap_poll_kthread = ((void*)0);
 }
 else
  rc = 0;
 mutex_unlock(&ap_poll_thread_mutex);
 return rc;
}
