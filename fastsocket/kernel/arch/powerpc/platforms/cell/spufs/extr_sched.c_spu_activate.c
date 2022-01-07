
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spu_context {int flags; TYPE_1__* ops; int prio; scalar_t__ spu; } ;
struct spu {int dummy; } ;
struct TYPE_2__ {unsigned long (* runcntl_read ) (struct spu_context*) ;} ;


 int ERESTARTSYS ;
 int SPU_CREATE_NOSCHED ;
 unsigned long SPU_RUNCNTL_RUNNABLE ;
 int SPU_UTIL_USER ;
 int __spu_schedule (struct spu*,struct spu_context*) ;
 int current ;
 struct spu* find_victim (struct spu_context*) ;
 scalar_t__ rt_prio (int ) ;
 scalar_t__ signal_pending (int ) ;
 int spu_add_to_rq (struct spu_context*) ;
 struct spu* spu_get_idle (struct spu_context*) ;
 int spu_prio_wait (struct spu_context*) ;
 int spuctx_switch_state (struct spu_context*,int ) ;
 unsigned long stub1 (struct spu_context*) ;

int spu_activate(struct spu_context *ctx, unsigned long flags)
{
 struct spu *spu;







 if (ctx->spu)
  return 0;

spu_activate_top:
 if (signal_pending(current))
  return -ERESTARTSYS;

 spu = spu_get_idle(ctx);




 if (!spu && rt_prio(ctx->prio))
  spu = find_victim(ctx);
 if (spu) {
  unsigned long runcntl;

  runcntl = ctx->ops->runcntl_read(ctx);
  __spu_schedule(spu, ctx);
  if (runcntl & SPU_RUNCNTL_RUNNABLE)
   spuctx_switch_state(ctx, SPU_UTIL_USER);

  return 0;
 }

 if (ctx->flags & SPU_CREATE_NOSCHED) {
  spu_prio_wait(ctx);
  goto spu_activate_top;
 }

 spu_add_to_rq(ctx);

 return 0;
}
