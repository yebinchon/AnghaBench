
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spu_context {int run_wq; } ;
struct spu {int node; int alloc_state; int * ctx; } ;
struct TYPE_2__ {int list_mutex; int nr_active; } ;


 int SPU_USED ;
 TYPE_1__* cbe_spu_info ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spu_add_to_rq (struct spu_context*) ;
 int spu_bind_context (struct spu*,struct spu_context*) ;
 int spu_set_timeslice (struct spu_context*) ;
 int wake_up_all (int *) ;

__attribute__((used)) static void __spu_schedule(struct spu *spu, struct spu_context *ctx)
{
 int node = spu->node;
 int success = 0;

 spu_set_timeslice(ctx);

 mutex_lock(&cbe_spu_info[node].list_mutex);
 if (spu->ctx == ((void*)0)) {
  spu_bind_context(spu, ctx);
  cbe_spu_info[node].nr_active++;
  spu->alloc_state = SPU_USED;
  success = 1;
 }
 mutex_unlock(&cbe_spu_info[node].list_mutex);

 if (success)
  wake_up_all(&ctx->run_wq);
 else
  spu_add_to_rq(ctx);
}
