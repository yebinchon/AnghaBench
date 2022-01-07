
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ spu_prof_running ;

void stop_spu_profiling_events(void)
{
 spu_prof_running = 0;
}
