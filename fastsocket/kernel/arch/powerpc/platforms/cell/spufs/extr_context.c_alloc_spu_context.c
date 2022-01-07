
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timespec {int dummy; } ;
struct spu_gang {int dummy; } ;
struct TYPE_2__ {int tstamp; int util_state; } ;
struct spu_context {TYPE_1__ stats; int aff_list; int rq; int owner; int * ops; int state; int run_wq; int mfc_wq; int stop_wq; int wbox_wq; int ibox_wq; int run_mutex; int state_mutex; int kref; int mapping_lock; int mmio_lock; int csa; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int SPU_STATE_SAVED ;
 int SPU_UTIL_IDLE_LOADED ;
 int __spu_update_sched_info (struct spu_context*) ;
 int atomic_inc (int *) ;
 int current ;
 int get_task_mm (int ) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct spu_context*) ;
 int kref_init (int *) ;
 int ktime_get_ts (struct timespec*) ;
 struct spu_context* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int nr_spu_contexts ;
 int spin_lock_init (int *) ;
 int spu_backing_ops ;
 int spu_gang_add_ctx (struct spu_gang*,struct spu_context*) ;
 scalar_t__ spu_init_csa (int *) ;
 int spu_set_timeslice (struct spu_context*) ;
 int timespec_to_ns (struct timespec*) ;

struct spu_context *alloc_spu_context(struct spu_gang *gang)
{
 struct spu_context *ctx;
 struct timespec ts;

 ctx = kzalloc(sizeof *ctx, GFP_KERNEL);
 if (!ctx)
  goto out;



 if (spu_init_csa(&ctx->csa))
  goto out_free;
 spin_lock_init(&ctx->mmio_lock);
 mutex_init(&ctx->mapping_lock);
 kref_init(&ctx->kref);
 mutex_init(&ctx->state_mutex);
 mutex_init(&ctx->run_mutex);
 init_waitqueue_head(&ctx->ibox_wq);
 init_waitqueue_head(&ctx->wbox_wq);
 init_waitqueue_head(&ctx->stop_wq);
 init_waitqueue_head(&ctx->mfc_wq);
 init_waitqueue_head(&ctx->run_wq);
 ctx->state = SPU_STATE_SAVED;
 ctx->ops = &spu_backing_ops;
 ctx->owner = get_task_mm(current);
 INIT_LIST_HEAD(&ctx->rq);
 INIT_LIST_HEAD(&ctx->aff_list);
 if (gang)
  spu_gang_add_ctx(gang, ctx);

 __spu_update_sched_info(ctx);
 spu_set_timeslice(ctx);
 ctx->stats.util_state = SPU_UTIL_IDLE_LOADED;
 ktime_get_ts(&ts);
 ctx->stats.tstamp = timespec_to_ns(&ts);

 atomic_inc(&nr_spu_contexts);
 goto out;
out_free:
 kfree(ctx);
 ctx = ((void*)0);
out:
 return ctx;
}
