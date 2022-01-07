
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_9__ {scalar_t__ class2_intr_base; int class2_intr; scalar_t__ slb_flt_base; int slb_flt; } ;
struct spu_context {int stop_wq; int * spu; TYPE_4__ stats; int * ops; int state; int csa; TYPE_1__* gang; } ;
struct TYPE_8__ {scalar_t__ class2_intr; scalar_t__ slb_flt; } ;
struct spu {size_t node; TYPE_3__ stats; int register_lock; TYPE_2__* ctx; scalar_t__ flags; scalar_t__ tgid; scalar_t__ pid; int * mfc_callback; int * stop_callback; int * wbox_callback; int * ibox_callback; int timestamp; } ;
struct TYPE_10__ {int reserved_spus; } ;
struct TYPE_7__ {int flags; } ;
struct TYPE_6__ {int aff_sched_count; } ;


 int SPU_CREATE_NOSCHED ;
 int SPU_STATE_SAVED ;
 int SPU_UTIL_IDLE_LOADED ;
 int SPU_UTIL_SYSTEM ;
 int SWITCH_LOG_STOP ;
 int atomic_dec (int *) ;
 int atomic_dec_if_positive (int *) ;
 TYPE_5__* cbe_spu_info ;
 int jiffies ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int spu_associate_mm (struct spu*,int *) ;
 int spu_backing_ops ;
 int spu_context_trace (int ,struct spu_context*,struct spu*) ;
 int spu_save (int *,struct spu*) ;
 scalar_t__ spu_stopped (struct spu_context*,int *) ;
 int spu_switch_log_notify (struct spu*,struct spu_context*,int ,int ) ;
 int spu_switch_notify (struct spu*,int *) ;
 int spu_unbind_context__enter ;
 int spu_unmap_mappings (struct spu_context*) ;
 int spuctx_switch_state (struct spu_context*,int ) ;
 int wake_up_all (int *) ;

__attribute__((used)) static void spu_unbind_context(struct spu *spu, struct spu_context *ctx)
{
 u32 status;

 spu_context_trace(spu_unbind_context__enter, ctx, spu);

 spuctx_switch_state(ctx, SPU_UTIL_SYSTEM);

  if (spu->ctx->flags & SPU_CREATE_NOSCHED)
  atomic_dec(&cbe_spu_info[spu->node].reserved_spus);

 if (ctx->gang)





  atomic_dec_if_positive(&ctx->gang->aff_sched_count);

 spu_switch_notify(spu, ((void*)0));
 spu_unmap_mappings(ctx);
 spu_save(&ctx->csa, spu);
 spu_switch_log_notify(spu, ctx, SWITCH_LOG_STOP, 0);

 spin_lock_irq(&spu->register_lock);
 spu->timestamp = jiffies;
 ctx->state = SPU_STATE_SAVED;
 spu->ibox_callback = ((void*)0);
 spu->wbox_callback = ((void*)0);
 spu->stop_callback = ((void*)0);
 spu->mfc_callback = ((void*)0);
 spu->pid = 0;
 spu->tgid = 0;
 ctx->ops = &spu_backing_ops;
 spu->flags = 0;
 spu->ctx = ((void*)0);
 spin_unlock_irq(&spu->register_lock);

 spu_associate_mm(spu, ((void*)0));

 ctx->stats.slb_flt +=
  (spu->stats.slb_flt - ctx->stats.slb_flt_base);
 ctx->stats.class2_intr +=
  (spu->stats.class2_intr - ctx->stats.class2_intr_base);


 spuctx_switch_state(ctx, SPU_UTIL_IDLE_LOADED);
 ctx->spu = ((void*)0);

 if (spu_stopped(ctx, &status))
  wake_up_all(&ctx->stop_wq);
}
