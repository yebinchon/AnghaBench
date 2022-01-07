
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct spu_context {scalar_t__ state; TYPE_1__* spu; } ;
struct TYPE_4__ {int list_mutex; } ;
struct TYPE_3__ {int node; } ;


 scalar_t__ SPU_STATE_RUNNABLE ;
 int __spu_update_sched_info (struct spu_context*) ;
 TYPE_2__* cbe_spu_info ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void spu_update_sched_info(struct spu_context *ctx)
{
 int node;

 if (ctx->state == SPU_STATE_RUNNABLE) {
  node = ctx->spu->node;




  mutex_lock(&cbe_spu_info[node].list_mutex);
  __spu_update_sched_info(ctx);
  mutex_unlock(&cbe_spu_info[node].list_mutex);
 } else {
  __spu_update_sched_info(ctx);
 }
}
