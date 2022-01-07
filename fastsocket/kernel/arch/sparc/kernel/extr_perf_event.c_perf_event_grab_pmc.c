
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 int active_events ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_inc_not_zero (int *) ;
 scalar_t__ atomic_read (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nmi_active ;
 int on_each_cpu (int ,int *,int) ;
 int perf_stop_nmi_watchdog ;
 int pmc_grab_mutex ;

void perf_event_grab_pmc(void)
{
 if (atomic_inc_not_zero(&active_events))
  return;

 mutex_lock(&pmc_grab_mutex);
 if (atomic_read(&active_events) == 0) {
  if (atomic_read(&nmi_active) > 0) {
   on_each_cpu(perf_stop_nmi_watchdog, ((void*)0), 1);
   BUG_ON(atomic_read(&nmi_active) != 0);
  }
  atomic_inc(&active_events);
 }
 mutex_unlock(&pmc_grab_mutex);
}
