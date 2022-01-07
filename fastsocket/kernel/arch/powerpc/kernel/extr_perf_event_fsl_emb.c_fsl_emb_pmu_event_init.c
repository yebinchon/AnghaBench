
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u64 ;
typedef int u32 ;
struct TYPE_5__ {int config; int idx; int config_base; int last_period; int period_left; int sample_period; } ;
struct TYPE_4__ {int type; size_t config; scalar_t__ exclude_idle; scalar_t__ exclude_kernel; scalar_t__ exclude_user; } ;
struct perf_event {int destroy; TYPE_2__ hw; TYPE_1__ attr; struct perf_event* group_leader; } ;
struct TYPE_6__ {size_t n_generic; size_t* generic_events; int (* xlate_event ) (size_t) ;int n_restricted; scalar_t__ n_counter; } ;


 int EBUSY ;
 int EINVAL ;
 int ENOENT ;
 int ENOTSUPP ;
 int EOPNOTSUPP ;
 int FSL_EMB_EVENT_RESTRICTED ;
 int FSL_EMB_EVENT_VALID ;
 int MAX_HWEVENTS ;



 int PMGC0_FAC ;
 int PMLCA_CE ;
 size_t PMLCA_EVENT_MASK ;
 int PMLCA_FCM1 ;
 int PMLCA_FCS ;
 int PMLCA_FCU ;
 int PMRN_PMGC0 ;
 int atomic_inc (int *) ;
 int atomic_inc_not_zero (int *) ;
 scalar_t__ atomic_read (int *) ;
 int collect_events (struct perf_event*,scalar_t__,struct perf_event**) ;
 int hw_perf_cache_event (size_t,size_t*) ;
 int hw_perf_event_destroy ;
 int isync () ;
 int local64_set (int *,int ) ;
 int mtpmr (int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int num_events ;
 int perf_event_interrupt ;
 int pmc_reserve_mutex ;
 TYPE_3__* ppmu ;
 scalar_t__ reserve_pmc_hardware (int ) ;
 int stub1 (size_t) ;

__attribute__((used)) static int fsl_emb_pmu_event_init(struct perf_event *event)
{
 u64 ev;
 struct perf_event *events[MAX_HWEVENTS];
 int n;
 int err;
 int num_restricted;
 int i;

 switch (event->attr.type) {
 case 130:
  ev = event->attr.config;
  if (ev >= ppmu->n_generic || ppmu->generic_events[ev] == 0)
   return -EOPNOTSUPP;
  ev = ppmu->generic_events[ev];
  break;

 case 129:
  err = hw_perf_cache_event(event->attr.config, &ev);
  if (err)
   return err;
  break;

 case 128:
  ev = event->attr.config;
  break;

 default:
  return -ENOENT;
 }

 event->hw.config = ppmu->xlate_event(ev);
 if (!(event->hw.config & FSL_EMB_EVENT_VALID))
  return -EINVAL;






 n = 0;
 if (event->group_leader != event) {
  n = collect_events(event->group_leader,
                     ppmu->n_counter - 1, events);
  if (n < 0)
   return -EINVAL;
 }

 if (event->hw.config & FSL_EMB_EVENT_RESTRICTED) {
  num_restricted = 0;
  for (i = 0; i < n; i++) {
   if (events[i]->hw.config & FSL_EMB_EVENT_RESTRICTED)
    num_restricted++;
  }

  if (num_restricted >= ppmu->n_restricted)
   return -EINVAL;
 }

 event->hw.idx = -1;

 event->hw.config_base = PMLCA_CE | PMLCA_FCM1 |
                         (u32)((ev << 16) & PMLCA_EVENT_MASK);

 if (event->attr.exclude_user)
  event->hw.config_base |= PMLCA_FCU;
 if (event->attr.exclude_kernel)
  event->hw.config_base |= PMLCA_FCS;
 if (event->attr.exclude_idle)
  return -ENOTSUPP;

 event->hw.last_period = event->hw.sample_period;
 local64_set(&event->hw.period_left, event->hw.last_period);







 err = 0;
 if (!atomic_inc_not_zero(&num_events)) {
  mutex_lock(&pmc_reserve_mutex);
  if (atomic_read(&num_events) == 0 &&
      reserve_pmc_hardware(perf_event_interrupt))
   err = -EBUSY;
  else
   atomic_inc(&num_events);
  mutex_unlock(&pmc_reserve_mutex);

  mtpmr(PMRN_PMGC0, PMGC0_FAC);
  isync();
 }
 event->destroy = hw_perf_event_destroy;

 return err;
}
