
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct TYPE_4__ {scalar_t__* slot; } ;
struct spu_lscsa {TYPE_2__ event_mask; } ;
struct TYPE_3__ {struct spu_lscsa* lscsa; } ;
struct spu_context {TYPE_1__ csa; } ;


 int spu_acquire_saved (struct spu_context*) ;
 int spu_release_saved (struct spu_context*) ;

__attribute__((used)) static int spufs_event_mask_set(void *data, u64 val)
{
 struct spu_context *ctx = data;
 struct spu_lscsa *lscsa = ctx->csa.lscsa;
 int ret;

 ret = spu_acquire_saved(ctx);
 if (ret)
  return ret;
 lscsa->event_mask.slot[0] = (u32) val;
 spu_release_saved(ctx);

 return 0;
}
