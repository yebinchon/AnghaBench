
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pmu {int dummy; } ;
struct TYPE_2__ {int type; } ;
struct perf_event {int (* destroy ) (struct perf_event*) ;struct pmu* pmu; struct perf_event* group_leader; TYPE_1__ attr; } ;


 int ENOENT ;



 int __x86_pmu_event_init (struct perf_event*) ;
 struct pmu pmu ;
 int stub1 (struct perf_event*) ;
 int validate_event (struct perf_event*) ;
 int validate_group (struct perf_event*) ;

__attribute__((used)) static int x86_pmu_event_init(struct perf_event *event)
{
 struct pmu *tmp;
 int err;

 switch (event->attr.type) {
 case 128:
 case 130:
 case 129:
  break;

 default:
  return -ENOENT;
 }

 err = __x86_pmu_event_init(event);
 if (!err) {





  tmp = event->pmu;
  event->pmu = &pmu;

  if (event->group_leader != event)
   err = validate_group(event);
  else
   err = validate_event(event);

  event->pmu = tmp;
 }
 if (err) {
  if (event->destroy)
   event->destroy(event);
 }

 return err;
}
