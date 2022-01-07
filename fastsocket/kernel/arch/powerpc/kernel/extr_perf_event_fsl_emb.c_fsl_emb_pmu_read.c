
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; int period_left; int idx; int prev_count; } ;
struct perf_event {TYPE_1__ hw; int count; } ;
typedef scalar_t__ s64 ;


 int PERF_HES_STOPPED ;
 int barrier () ;
 int local64_add (scalar_t__,int *) ;
 scalar_t__ local64_cmpxchg (int *,scalar_t__,scalar_t__) ;
 scalar_t__ local64_read (int *) ;
 int local64_sub (scalar_t__,int *) ;
 scalar_t__ read_pmc (int ) ;

__attribute__((used)) static void fsl_emb_pmu_read(struct perf_event *event)
{
 s64 val, delta, prev;

 if (event->hw.state & PERF_HES_STOPPED)
  return;






 do {
  prev = local64_read(&event->hw.prev_count);
  barrier();
  val = read_pmc(event->hw.idx);
 } while (local64_cmpxchg(&event->hw.prev_count, prev, val) != prev);


 delta = (val - prev) & 0xfffffffful;
 local64_add(delta, &event->count);
 local64_sub(delta, &event->hw.period_left);
}
