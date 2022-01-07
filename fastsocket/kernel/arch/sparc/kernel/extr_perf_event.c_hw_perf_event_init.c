
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmu {int dummy; } ;
struct perf_event {int dummy; } ;


 struct pmu const* ERR_PTR (int) ;
 int __hw_perf_event_init (struct perf_event*) ;
 struct pmu const pmu ;

const struct pmu *hw_perf_event_init(struct perf_event *event)
{
 int err = __hw_perf_event_init(event);

 if (err)
  return ERR_PTR(err);
 return &pmu;
}
