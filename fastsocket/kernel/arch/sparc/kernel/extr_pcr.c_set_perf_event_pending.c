
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PIL_DEFERRED_PCR_WORK ;
 int set_softint (int) ;

void set_perf_event_pending(void)
{
 set_softint(1 << PIL_DEFERRED_PCR_WORK);
}
