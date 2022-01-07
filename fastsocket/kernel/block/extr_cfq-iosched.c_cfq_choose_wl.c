
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfq_queue {unsigned long rb_key; } ;
struct cfq_group {int dummy; } ;
struct cfq_data {int dummy; } ;
typedef enum wl_type_t { ____Placeholder_wl_type_t } wl_type_t ;
typedef enum wl_prio_t { ____Placeholder_wl_prio_t } wl_prio_t ;


 int SYNC_NOIDLE_WORKLOAD ;
 int SYNC_WORKLOAD ;
 struct cfq_queue* cfq_rb_first (int ) ;
 int service_tree_for (struct cfq_group*,int,int) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static enum wl_type_t cfq_choose_wl(struct cfq_data *cfqd,
    struct cfq_group *cfqg, enum wl_prio_t prio)
{
 struct cfq_queue *queue;
 int i;
 bool key_valid = 0;
 unsigned long lowest_key = 0;
 enum wl_type_t cur_best = SYNC_NOIDLE_WORKLOAD;

 for (i = 0; i <= SYNC_WORKLOAD; ++i) {

  queue = cfq_rb_first(service_tree_for(cfqg, prio, i));
  if (queue &&
      (!key_valid || time_before(queue->rb_key, lowest_key))) {
   lowest_key = queue->rb_key;
   cur_best = i;
   key_valid = 1;
  }
 }

 return cur_best;
}
