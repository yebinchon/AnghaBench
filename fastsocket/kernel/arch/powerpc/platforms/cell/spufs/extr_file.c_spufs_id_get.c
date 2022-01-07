
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u64 ;
struct spu_context {scalar_t__ state; TYPE_1__* spu; } ;
struct TYPE_2__ {unsigned int number; } ;


 scalar_t__ SPU_STATE_RUNNABLE ;

__attribute__((used)) static u64 spufs_id_get(struct spu_context *ctx)
{
 u64 num;

 if (ctx->state == SPU_STATE_RUNNABLE)
  num = ctx->spu->number;
 else
  num = (unsigned int)-1;

 return num;
}
