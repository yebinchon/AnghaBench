
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int active_events ;
 scalar_t__ atomic_dec_and_mutex_lock (int *,int *) ;
 scalar_t__ atomic_read (int *) ;
 int mutex_unlock (int *) ;
 int nmi_active ;
 int on_each_cpu (int ,int *,int) ;
 int pmc_grab_mutex ;
 int start_nmi_watchdog ;

void perf_event_release_pmc(void)
{
 if (atomic_dec_and_mutex_lock(&active_events, &pmc_grab_mutex)) {
  if (atomic_read(&nmi_active) == 0)
   on_each_cpu(start_nmi_watchdog, ((void*)0), 1);
  mutex_unlock(&pmc_grab_mutex);
 }
}
