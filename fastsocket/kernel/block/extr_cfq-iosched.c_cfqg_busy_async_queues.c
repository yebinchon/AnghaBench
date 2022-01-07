
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cfq_group {TYPE_1__** service_trees; } ;
struct cfq_data {int dummy; } ;
struct TYPE_2__ {int count; } ;


 size_t ASYNC_WORKLOAD ;
 size_t BE_WORKLOAD ;
 size_t RT_WORKLOAD ;

__attribute__((used)) static inline int cfqg_busy_async_queues(struct cfq_data *cfqd,
     struct cfq_group *cfqg)
{
 return cfqg->service_trees[RT_WORKLOAD][ASYNC_WORKLOAD].count
  + cfqg->service_trees[BE_WORKLOAD][ASYNC_WORKLOAD].count;
}
