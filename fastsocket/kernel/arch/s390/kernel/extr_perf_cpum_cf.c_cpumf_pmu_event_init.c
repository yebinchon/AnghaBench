
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
struct perf_event {int (* destroy ) (struct perf_event*) ;TYPE_1__ attr; } ;


 int ENOENT ;



 int __hw_perf_event_init (struct perf_event*) ;
 int is_sampling_event (struct perf_event*) ;
 int stub1 (struct perf_event*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int cpumf_pmu_event_init(struct perf_event *event)
{
 int err;

 switch (event->attr.type) {
 case 130:
 case 129:
 case 128:




  if (is_sampling_event(event))
   return -ENOENT;
  err = __hw_perf_event_init(event);
  break;
 default:
  return -ENOENT;
 }

 if (unlikely(err) && event->destroy)
  event->destroy(event);

 return err;
}
