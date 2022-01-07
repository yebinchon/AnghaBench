
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u64 ;
struct perf_event_attr {int type; size_t config; int exclude_user; int exclude_kernel; int exclude_hv; } ;
struct hw_perf_event {size_t config; int config_base; } ;
struct perf_event {int destroy; struct hw_perf_event hw; struct perf_event_attr attr; } ;


 size_t ARRAY_SIZE (size_t*) ;
 int EBUSY ;
 int EINVAL ;
 int ENOENT ;
 int EOPNOTSUPP ;
 size_t PERF_CPUM_CF_MAX_CTR ;


 int atomic_inc (int *) ;
 int atomic_inc_not_zero (int *) ;
 scalar_t__ atomic_read (int *) ;
 size_t* cpumf_generic_events_basic ;
 size_t* cpumf_generic_events_user ;
 int get_counter_set (size_t) ;
 int hw_perf_event_destroy ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int num_events ;
 int pmc_reserve_mutex ;
 scalar_t__ reserve_pmc_hardware () ;
 int validate_ctr_auth (struct hw_perf_event*) ;
 int validate_ctr_version (struct hw_perf_event*) ;
 int validate_event (struct hw_perf_event*) ;

__attribute__((used)) static int __hw_perf_event_init(struct perf_event *event)
{
 struct perf_event_attr *attr = &event->attr;
 struct hw_perf_event *hwc = &event->hw;
 int err;
 u64 ev;

 switch (attr->type) {
 case 128:


  if (attr->exclude_kernel || attr->exclude_user ||
      attr->exclude_hv)
   return -EOPNOTSUPP;
  ev = attr->config;
  break;

 case 129:
  ev = attr->config;

  if (!attr->exclude_user && attr->exclude_kernel) {
   if (ev >= ARRAY_SIZE(cpumf_generic_events_user))
    return -EOPNOTSUPP;
   ev = cpumf_generic_events_user[ev];


  } else if (!attr->exclude_kernel && attr->exclude_user) {
   return -EOPNOTSUPP;


  } else {
   if (ev >= ARRAY_SIZE(cpumf_generic_events_basic))
    return -EOPNOTSUPP;
   ev = cpumf_generic_events_basic[ev];
  }
  break;

 default:
  return -ENOENT;
 }

 if (ev == -1)
  return -ENOENT;

 if (ev >= PERF_CPUM_CF_MAX_CTR)
  return -EINVAL;






 hwc->config = ev;
 hwc->config_base = get_counter_set(ev);






 err = validate_event(hwc);
 if (err)
  return err;


 if (!atomic_inc_not_zero(&num_events)) {
  mutex_lock(&pmc_reserve_mutex);
  if (atomic_read(&num_events) == 0 && reserve_pmc_hardware())
   err = -EBUSY;
  else
   atomic_inc(&num_events);
  mutex_unlock(&pmc_reserve_mutex);
 }
 event->destroy = hw_perf_event_destroy;


 err = validate_ctr_auth(hwc);
 if (!err)
  err = validate_ctr_version(hwc);

 return err;
}
