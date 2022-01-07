
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_2__ {int config; int prev_count; } ;
struct perf_event {TYPE_1__ hw; } ;


 int ecctr (int ,scalar_t__*) ;
 scalar_t__ local64_cmpxchg (int *,scalar_t__,scalar_t__) ;
 scalar_t__ local64_read (int *) ;

__attribute__((used)) static int hw_perf_event_reset(struct perf_event *event)
{
 u64 prev, new;
 int err;

 do {
  prev = local64_read(&event->hw.prev_count);
  err = ecctr(event->hw.config, &new);
  if (err) {
   if (err != 3)
    break;





   new = 0;
  }
 } while (local64_cmpxchg(&event->hw.prev_count, prev, new) != prev);

 return err;
}
