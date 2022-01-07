
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long long u64 ;
struct TYPE_2__ {int config; int prev_count; } ;
struct perf_event {int count; TYPE_1__ hw; } ;


 int ecctr (int ,unsigned long long*) ;
 int local64_add (unsigned long long,int *) ;
 unsigned long long local64_cmpxchg (int *,unsigned long long,unsigned long long) ;
 unsigned long long local64_read (int *) ;

__attribute__((used)) static int hw_perf_event_update(struct perf_event *event)
{
 u64 prev, new, delta;
 int err;

 do {
  prev = local64_read(&event->hw.prev_count);
  err = ecctr(event->hw.config, &new);
  if (err)
   goto out;
 } while (local64_cmpxchg(&event->hw.prev_count, prev, new) != prev);

 delta = (prev <= new) ? new - prev
         : (-1ULL - prev) + new + 1;
 local64_add(delta, &event->count);
out:
 return err;
}
