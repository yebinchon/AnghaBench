
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct perf_event_map {int pic_mask; int encoding; } ;
struct perf_event_attr {scalar_t__ type; scalar_t__ config; int exclude_hv; int exclude_kernel; int exclude_user; } ;
struct hw_perf_event {unsigned long event_base; int config; int idx; scalar_t__ sample_period; int period_left; scalar_t__ last_period; int config_base; } ;
struct perf_event {int destroy; struct perf_event* group_leader; struct hw_perf_event hw; struct perf_event_attr attr; } ;
struct TYPE_2__ {scalar_t__ max_events; int lower_shift; int upper_shift; int hv_bit; int irq_bit; struct perf_event_map* (* event_map ) (scalar_t__) ;} ;


 int EINVAL ;
 int ENODEV ;
 int EOPNOTSUPP ;
 scalar_t__ IS_ERR (struct perf_event_map const*) ;
 int MAX_HWEVENTS ;
 scalar_t__ MAX_PERIOD ;
 int PCR_STRACE ;
 int PCR_UTRACE ;
 scalar_t__ PERF_TYPE_HARDWARE ;
 scalar_t__ PERF_TYPE_HW_CACHE ;
 int PIC_LOWER_INDEX ;
 int PIC_UPPER ;
 int PIC_UPPER_INDEX ;
 int PTR_ERR (struct perf_event_map const*) ;
 int atomic64_set (int *,scalar_t__) ;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ check_excludes (struct perf_event**,int,int) ;
 int collect_events (struct perf_event*,scalar_t__,struct perf_event**,unsigned long*) ;
 int hw_perf_event_destroy ;
 int nmi_active ;
 unsigned long perf_event_encode (struct perf_event_map const*) ;
 int perf_event_grab_pmc () ;
 scalar_t__ perf_max_events ;
 scalar_t__ sparc_check_constraints (unsigned long*,int) ;
 struct perf_event_map* sparc_map_cache_event (scalar_t__) ;
 TYPE_1__* sparc_pmu ;
 struct perf_event_map* stub1 (scalar_t__) ;

__attribute__((used)) static int __hw_perf_event_init(struct perf_event *event)
{
 struct perf_event_attr *attr = &event->attr;
 struct perf_event *evts[MAX_HWEVENTS];
 struct hw_perf_event *hwc = &event->hw;
 unsigned long events[MAX_HWEVENTS];
 const struct perf_event_map *pmap;
 u64 enc;
 int n;

 if (atomic_read(&nmi_active) < 0)
  return -ENODEV;

 if (attr->type == PERF_TYPE_HARDWARE) {
  if (attr->config >= sparc_pmu->max_events)
   return -EINVAL;
  pmap = sparc_pmu->event_map(attr->config);
 } else if (attr->type == PERF_TYPE_HW_CACHE) {
  pmap = sparc_map_cache_event(attr->config);
  if (IS_ERR(pmap))
   return PTR_ERR(pmap);
 } else
  return -EOPNOTSUPP;





 hwc->config_base = sparc_pmu->irq_bit;
 if (!attr->exclude_user)
  hwc->config_base |= PCR_UTRACE;
 if (!attr->exclude_kernel)
  hwc->config_base |= PCR_STRACE;
 if (!attr->exclude_hv)
  hwc->config_base |= sparc_pmu->hv_bit;

 hwc->event_base = perf_event_encode(pmap);

 enc = pmap->encoding;

 n = 0;
 if (event->group_leader != event) {
  n = collect_events(event->group_leader,
       perf_max_events - 1,
       evts, events);
  if (n < 0)
   return -EINVAL;
 }
 events[n] = hwc->event_base;
 evts[n] = event;

 if (check_excludes(evts, n, 1))
  return -EINVAL;

 if (sparc_check_constraints(events, n + 1))
  return -EINVAL;




 perf_event_grab_pmc();
 event->destroy = hw_perf_event_destroy;

 if (!hwc->sample_period) {
  hwc->sample_period = MAX_PERIOD;
  hwc->last_period = hwc->sample_period;
  atomic64_set(&hwc->period_left, hwc->sample_period);
 }

 if (pmap->pic_mask & PIC_UPPER) {
  hwc->idx = PIC_UPPER_INDEX;
  enc <<= sparc_pmu->upper_shift;
 } else {
  hwc->idx = PIC_LOWER_INDEX;
  enc <<= sparc_pmu->lower_shift;
 }

 hwc->config |= enc;
 return 0;
}
