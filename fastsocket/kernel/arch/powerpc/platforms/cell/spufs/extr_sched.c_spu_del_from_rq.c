
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spu_context {int dummy; } ;
struct TYPE_2__ {int runq_lock; } ;


 int __spu_del_from_rq (struct spu_context*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 TYPE_1__* spu_prio ;

void spu_del_from_rq(struct spu_context *ctx)
{
 spin_lock(&spu_prio->runq_lock);
 __spu_del_from_rq(ctx);
 spin_unlock(&spu_prio->runq_lock);
}
