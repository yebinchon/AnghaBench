
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int dummy; } ;


 int active_events ;
 scalar_t__ atomic_dec_and_mutex_lock (int *,int *) ;
 int mutex_unlock (int *) ;
 int pmc_reserve_mutex ;
 int release_ds_buffers () ;
 int release_pmc_hardware () ;

__attribute__((used)) static void hw_perf_event_destroy(struct perf_event *event)
{
 if (atomic_dec_and_mutex_lock(&active_events, &pmc_reserve_mutex)) {
  release_pmc_hardware();
  release_ds_buffers();
  mutex_unlock(&pmc_reserve_mutex);
 }
}
