
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spu_context {size_t prio; int rq; } ;
struct TYPE_2__ {int nr_waiting; int bitmap; int * runq; } ;


 scalar_t__ SPUSCHED_TICK ;
 scalar_t__ jiffies ;
 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int mod_timer (int *,scalar_t__) ;
 int set_bit (size_t,int ) ;
 TYPE_1__* spu_prio ;
 int spusched_timer ;

__attribute__((used)) static void __spu_add_to_rq(struct spu_context *ctx)
{
 if (list_empty(&ctx->rq)) {
  list_add_tail(&ctx->rq, &spu_prio->runq[ctx->prio]);
  set_bit(ctx->prio, spu_prio->bitmap);
  if (!spu_prio->nr_waiting++)
   mod_timer(&spusched_timer, jiffies + SPUSCHED_TICK);
 }
}
