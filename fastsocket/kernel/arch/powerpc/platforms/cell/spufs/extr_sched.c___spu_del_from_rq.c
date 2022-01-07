
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spu_context {int prio; int rq; } ;
struct TYPE_2__ {int bitmap; int * runq; int nr_waiting; } ;


 int clear_bit (int,int ) ;
 int del_timer (int *) ;
 int list_del_init (int *) ;
 scalar_t__ list_empty (int *) ;
 TYPE_1__* spu_prio ;
 int spusched_timer ;

__attribute__((used)) static void __spu_del_from_rq(struct spu_context *ctx)
{
 int prio = ctx->prio;

 if (!list_empty(&ctx->rq)) {
  if (!--spu_prio->nr_waiting)
   del_timer(&spusched_timer);
  list_del_init(&ctx->rq);

  if (list_empty(&spu_prio->runq[prio]))
   clear_bit(prio, spu_prio->bitmap);
 }
}
