
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct perf_event_map {scalar_t__ encoding; } ;
struct TYPE_2__ {struct perf_event_map**** cache_map; } ;


 scalar_t__ CACHE_OP_NONSENSE ;
 scalar_t__ CACHE_OP_UNSUPPORTED ;
 int EINVAL ;
 int ENOENT ;
 struct perf_event_map const* ERR_PTR (int ) ;
 unsigned int PERF_COUNT_HW_CACHE_MAX ;
 unsigned int PERF_COUNT_HW_CACHE_OP_MAX ;
 unsigned int PERF_COUNT_HW_CACHE_RESULT_MAX ;
 TYPE_1__* sparc_pmu ;

__attribute__((used)) static const struct perf_event_map *sparc_map_cache_event(u64 config)
{
 unsigned int cache_type, cache_op, cache_result;
 const struct perf_event_map *pmap;

 if (!sparc_pmu->cache_map)
  return ERR_PTR(-ENOENT);

 cache_type = (config >> 0) & 0xff;
 if (cache_type >= PERF_COUNT_HW_CACHE_MAX)
  return ERR_PTR(-EINVAL);

 cache_op = (config >> 8) & 0xff;
 if (cache_op >= PERF_COUNT_HW_CACHE_OP_MAX)
  return ERR_PTR(-EINVAL);

 cache_result = (config >> 16) & 0xff;
 if (cache_result >= PERF_COUNT_HW_CACHE_RESULT_MAX)
  return ERR_PTR(-EINVAL);

 pmap = &((*sparc_pmu->cache_map)[cache_type][cache_op][cache_result]);

 if (pmap->encoding == CACHE_OP_UNSUPPORTED)
  return ERR_PTR(-ENOENT);

 if (pmap->encoding == CACHE_OP_NONSENSE)
  return ERR_PTR(-EINVAL);

 return pmap;
}
