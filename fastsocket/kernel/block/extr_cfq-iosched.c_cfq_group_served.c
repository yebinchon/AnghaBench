
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cfq_rb_root {int min_vdisktime; } ;
struct cfq_queue {unsigned int slice_dispatch; unsigned int allocated_slice; int nr_sectors; int cfqd; } ;
struct TYPE_2__ {int count; } ;
struct cfq_group {int nr_cfqq; int blkg; int vdisktime; scalar_t__ saved_workload_slice; int saved_serving_prio; int saved_workload; TYPE_1__ service_tree_idle; } ;
struct cfq_data {int serving_prio; int serving_type; scalar_t__ workload_expires; struct cfq_rb_root grp_service_tree; } ;


 int BUG_ON (int) ;
 int cfq_blkiocg_set_start_empty_time (int *) ;
 int cfq_blkiocg_update_timeslice_used (int *,unsigned int) ;
 unsigned int cfq_cfqq_slice_usage (struct cfq_queue*) ;
 int cfq_cfqq_sync (struct cfq_queue*) ;
 int cfq_group_service_tree_add (struct cfq_rb_root*,struct cfq_group*) ;
 int cfq_group_service_tree_del (struct cfq_rb_root*,struct cfq_group*) ;
 int cfq_log_cfqg (struct cfq_data*,struct cfq_group*,char*,int ,int ) ;
 int cfq_log_cfqq (int ,struct cfq_queue*,char*,unsigned int,unsigned int,unsigned int,scalar_t__,int ) ;
 scalar_t__ cfq_scale_slice (unsigned int,struct cfq_group*) ;
 int cfqg_busy_async_queues (struct cfq_data*,struct cfq_group*) ;
 scalar_t__ iops_mode (struct cfq_data*) ;
 scalar_t__ jiffies ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;

__attribute__((used)) static void cfq_group_served(struct cfq_data *cfqd, struct cfq_group *cfqg,
    struct cfq_queue *cfqq)
{
 struct cfq_rb_root *st = &cfqd->grp_service_tree;
 unsigned int used_sl, charge;
 int nr_sync = cfqg->nr_cfqq - cfqg_busy_async_queues(cfqd, cfqg)
   - cfqg->service_tree_idle.count;

 BUG_ON(nr_sync < 0);
 used_sl = charge = cfq_cfqq_slice_usage(cfqq);

 if (iops_mode(cfqd))
  charge = cfqq->slice_dispatch;
 else if (!cfq_cfqq_sync(cfqq) && !nr_sync)
  charge = cfqq->allocated_slice;


 cfq_group_service_tree_del(st, cfqg);
 cfqg->vdisktime += cfq_scale_slice(charge, cfqg);

 cfq_group_service_tree_add(st, cfqg);


 if (time_after(cfqd->workload_expires, jiffies)) {
  cfqg->saved_workload_slice = cfqd->workload_expires
      - jiffies;
  cfqg->saved_workload = cfqd->serving_type;
  cfqg->saved_serving_prio = cfqd->serving_prio;
 } else
  cfqg->saved_workload_slice = 0;

 cfq_log_cfqg(cfqd, cfqg, "served: vt=%llu min_vt=%llu", cfqg->vdisktime,
     st->min_vdisktime);
 cfq_log_cfqq(cfqq->cfqd, cfqq, "sl_used=%u disp=%u charge=%u iops=%u"
   " sect=%u", used_sl, cfqq->slice_dispatch, charge,
   iops_mode(cfqd), cfqq->nr_sectors);
 cfq_blkiocg_update_timeslice_used(&cfqg->blkg, used_sl);
 cfq_blkiocg_set_start_empty_time(&cfqg->blkg);
}
