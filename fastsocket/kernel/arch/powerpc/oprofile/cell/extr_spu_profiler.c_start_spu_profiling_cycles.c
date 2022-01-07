
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
typedef int ktime_t ;
struct TYPE_5__ {int function; } ;


 int CLOCK_MONOTONIC ;
 int DEFAULT_TIMER_EXPIRE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HRTIMER_MODE_REL ;
 int SPUS_PER_NODE ;
 int TICK_NSEC ;
 int TRACE_ARRAY_SIZE ;
 int hrtimer_init (TYPE_1__*,int ,int ) ;
 int hrtimer_set_expires (TYPE_1__*,int ) ;
 int hrtimer_start (TYPE_1__*,int ,int ) ;
 int ktime_set (int ,int ) ;
 int kzalloc (int,int ) ;
 int pr_debug (char*,int ) ;
 int profile_spus ;
 int profiling_interval ;
 int samples ;
 int schedule_delayed_work (int *,int ) ;
 int spu_prof_running ;
 int spu_work ;
 TYPE_1__ timer ;

int start_spu_profiling_cycles(unsigned int cycles_reset)
{
 ktime_t kt;

 pr_debug("timer resolution: %lu\n", TICK_NSEC);
 kt = ktime_set(0, profiling_interval);
 hrtimer_init(&timer, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
 hrtimer_set_expires(&timer, kt);
 timer.function = profile_spus;


 samples = kzalloc(SPUS_PER_NODE *
     TRACE_ARRAY_SIZE * sizeof(u32), GFP_KERNEL);

 if (!samples)
  return -ENOMEM;

 spu_prof_running = 1;
 hrtimer_start(&timer, kt, HRTIMER_MODE_REL);
 schedule_delayed_work(&spu_work, DEFAULT_TIMER_EXPIRE);

 return 0;
}
