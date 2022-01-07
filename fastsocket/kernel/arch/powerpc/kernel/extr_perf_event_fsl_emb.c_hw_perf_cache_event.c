
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int**** cache_events; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 unsigned long PERF_COUNT_HW_CACHE_MAX ;
 unsigned long PERF_COUNT_HW_CACHE_OP_MAX ;
 unsigned long PERF_COUNT_HW_CACHE_RESULT_MAX ;
 TYPE_1__* ppmu ;

__attribute__((used)) static int hw_perf_cache_event(u64 config, u64 *eventp)
{
 unsigned long type, op, result;
 int ev;

 if (!ppmu->cache_events)
  return -EINVAL;


 type = config & 0xff;
 op = (config >> 8) & 0xff;
 result = (config >> 16) & 0xff;

 if (type >= PERF_COUNT_HW_CACHE_MAX ||
     op >= PERF_COUNT_HW_CACHE_OP_MAX ||
     result >= PERF_COUNT_HW_CACHE_RESULT_MAX)
  return -EINVAL;

 ev = (*ppmu->cache_events)[type][op][result];
 if (ev == 0)
  return -EOPNOTSUPP;
 if (ev == -1)
  return -EINVAL;
 *eventp = ev;
 return 0;
}
