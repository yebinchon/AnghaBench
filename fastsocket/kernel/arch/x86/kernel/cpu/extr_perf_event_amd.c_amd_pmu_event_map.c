
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int * amd_perfmon_event_map ;

__attribute__((used)) static u64 amd_pmu_event_map(int hw_event)
{
 return amd_perfmon_event_map[hw_event];
}
