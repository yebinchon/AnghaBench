
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int config; } ;
struct perf_event {TYPE_1__ attr; } ;
struct TYPE_6__ {unsigned int escr_emask; scalar_t__ shared; } ;


 unsigned int ARRAY_SIZE (TYPE_2__*) ;
 int CAP_SYS_ADMIN ;
 int EACCES ;
 int EINVAL ;
 unsigned int P4_ESCR_EVENTMASK_MASK ;
 int P4_PEBS_CONFIG_ENABLE ;
 int capable (int ) ;
 scalar_t__ p4_config_pebs_has (int ,int ) ;
 unsigned int p4_config_unpack_escr (int ) ;
 unsigned int p4_config_unpack_event (int ) ;
 unsigned int p4_config_unpack_metric (int ) ;
 TYPE_2__* p4_event_bind_map ;
 int p4_event_match_cpu_model (unsigned int) ;
 scalar_t__ p4_ht_active () ;
 TYPE_2__* p4_pebs_bind_map ;
 scalar_t__ perf_paranoid_cpu () ;

__attribute__((used)) static int p4_validate_raw_event(struct perf_event *event)
{
 unsigned int v, emask;


 v = p4_config_unpack_event(event->attr.config);
 if (v >= ARRAY_SIZE(p4_event_bind_map))
  return -EINVAL;


 if (!p4_event_match_cpu_model(v))
  return -EINVAL;
 if (p4_ht_active() && p4_event_bind_map[v].shared) {
  if (perf_paranoid_cpu() && !capable(CAP_SYS_ADMIN))
   return -EACCES;
 }


 emask = p4_config_unpack_escr(event->attr.config) & P4_ESCR_EVENTMASK_MASK;
 if (emask & ~p4_event_bind_map[v].escr_emask)
  return -EINVAL;




 if (p4_config_pebs_has(event->attr.config, P4_PEBS_CONFIG_ENABLE))
  return -EINVAL;

 v = p4_config_unpack_metric(event->attr.config);
 if (v >= ARRAY_SIZE(p4_pebs_bind_map))
  return -EINVAL;

 return 0;
}
