
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int class2_intr_base; int slb_flt_base; } ;
struct spu_context {int flags; int state; int csa; int * ops; struct spu* spu; int owner; TYPE_1__ stats; } ;
struct TYPE_6__ {int class2_intr; int slb_flt; } ;
struct spu {size_t node; int timestamp; int register_lock; int mfc_callback; int stop_callback; int wbox_callback; int ibox_callback; int tgid; int pid; scalar_t__ flags; struct spu_context* ctx; TYPE_2__ stats; } ;
struct TYPE_8__ {int reserved_spus; } ;
struct TYPE_7__ {int tgid; int pid; } ;


 int SPU_CREATE_NOSCHED ;
 int SPU_STATE_RUNNABLE ;
 int SPU_UTIL_SYSTEM ;
 int SPU_UTIL_USER ;
 int SWITCH_LOG_START ;
 int atomic_inc (int *) ;
 TYPE_4__* cbe_spu_info ;
 TYPE_3__* current ;
 int jiffies ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int spu_associate_mm (struct spu*,int ) ;
 int spu_bind_context__enter ;
 int spu_context_trace (int ,struct spu_context*,struct spu*) ;
 int spu_hw_ops ;
 int spu_restore (int *,struct spu*) ;
 int spu_switch_log_notify (struct spu*,struct spu_context*,int ,int ) ;
 int spu_switch_notify (struct spu*,struct spu_context*) ;
 int spu_unmap_mappings (struct spu_context*) ;
 int spuctx_switch_state (struct spu_context*,int ) ;
 int spufs_ibox_callback ;
 int spufs_mfc_callback ;
 int spufs_stop_callback ;
 int spufs_wbox_callback ;

__attribute__((used)) static void spu_bind_context(struct spu *spu, struct spu_context *ctx)
{
 spu_context_trace(spu_bind_context__enter, ctx, spu);

 spuctx_switch_state(ctx, SPU_UTIL_SYSTEM);

 if (ctx->flags & SPU_CREATE_NOSCHED)
  atomic_inc(&cbe_spu_info[spu->node].reserved_spus);

 ctx->stats.slb_flt_base = spu->stats.slb_flt;
 ctx->stats.class2_intr_base = spu->stats.class2_intr;

 spu_associate_mm(spu, ctx->owner);

 spin_lock_irq(&spu->register_lock);
 spu->ctx = ctx;
 spu->flags = 0;
 ctx->spu = spu;
 ctx->ops = &spu_hw_ops;
 spu->pid = current->pid;
 spu->tgid = current->tgid;
 spu->ibox_callback = spufs_ibox_callback;
 spu->wbox_callback = spufs_wbox_callback;
 spu->stop_callback = spufs_stop_callback;
 spu->mfc_callback = spufs_mfc_callback;
 spin_unlock_irq(&spu->register_lock);

 spu_unmap_mappings(ctx);

 spu_switch_log_notify(spu, ctx, SWITCH_LOG_START, 0);
 spu_restore(&ctx->csa, spu);
 spu->timestamp = jiffies;
 spu_switch_notify(spu, ctx);
 ctx->state = SPU_STATE_RUNNABLE;

 spuctx_switch_state(ctx, SPU_UTIL_USER);
}
