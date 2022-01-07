
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {scalar_t__ idx; int prev_count; } ;
struct perf_event {int count; TYPE_1__ hw; } ;
struct intel_uncore_box {int dummy; } ;


 scalar_t__ UNCORE_PMC_IDX_FIXED ;
 int local64_add (int,int *) ;
 int local64_read (int *) ;
 int local64_xchg (int *,int) ;
 int uncore_fixed_ctr_bits (struct intel_uncore_box*) ;
 int uncore_perf_ctr_bits (struct intel_uncore_box*) ;
 int uncore_read_counter (struct intel_uncore_box*,struct perf_event*) ;

__attribute__((used)) static void uncore_perf_event_update(struct intel_uncore_box *box, struct perf_event *event)
{
 u64 prev_count, new_count, delta;
 int shift;

 if (event->hw.idx >= UNCORE_PMC_IDX_FIXED)
  shift = 64 - uncore_fixed_ctr_bits(box);
 else
  shift = 64 - uncore_perf_ctr_bits(box);


again:
 prev_count = local64_read(&event->hw.prev_count);
 new_count = uncore_read_counter(box, event);
 if (local64_xchg(&event->hw.prev_count, new_count) != prev_count)
  goto again;

 delta = (new_count << shift) - (prev_count << shift);
 delta >>= shift;

 local64_add(delta, &event->count);
}
