
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; } ;
struct cfq_group {TYPE_2__** service_trees; TYPE_1__ service_tree_idle; } ;
struct cfq_data {int dummy; } ;
typedef enum wl_prio_t { ____Placeholder_wl_prio_t } wl_prio_t ;
struct TYPE_4__ {int count; } ;


 size_t ASYNC_WORKLOAD ;
 int IDLE_WORKLOAD ;
 size_t SYNC_NOIDLE_WORKLOAD ;
 size_t SYNC_WORKLOAD ;

__attribute__((used)) static inline int cfq_group_busy_queues_wl(enum wl_prio_t wl,
     struct cfq_data *cfqd,
     struct cfq_group *cfqg)
{
 if (wl == IDLE_WORKLOAD)
  return cfqg->service_tree_idle.count;

 return cfqg->service_trees[wl][ASYNC_WORKLOAD].count
  + cfqg->service_trees[wl][SYNC_NOIDLE_WORKLOAD].count
  + cfqg->service_trees[wl][SYNC_WORKLOAD].count;
}
