
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spu_context {int dummy; } ;


 int MAX_PRIO ;
 int __spu_deactivate (struct spu_context*,int,int ) ;
 int spu_context_nospu_trace (int ,struct spu_context*) ;
 int spu_deactivate__enter ;

void spu_deactivate(struct spu_context *ctx)
{
 spu_context_nospu_trace(spu_deactivate__enter, ctx);
 __spu_deactivate(ctx, 1, MAX_PRIO);
}
