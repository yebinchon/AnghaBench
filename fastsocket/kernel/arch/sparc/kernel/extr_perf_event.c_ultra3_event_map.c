
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_map {int dummy; } ;


 struct perf_event_map const* ultra3_perfmon_event_map ;

__attribute__((used)) static const struct perf_event_map *ultra3_event_map(int event_id)
{
 return &ultra3_perfmon_event_map[event_id];
}
