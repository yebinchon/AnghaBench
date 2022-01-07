
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int spu_cfg_RW; } ;
struct TYPE_4__ {int* spu_chnlcnt_RW; int register_lock; int * spu_chnldata_RW; TYPE_1__ priv2; } ;
struct spu_context {TYPE_2__ csa; } ;


 int MFC_SIGNAL_1_EVENT ;
 int gen_spu_event (struct spu_context*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void spu_backing_signal1_write(struct spu_context *ctx, u32 data)
{
 spin_lock(&ctx->csa.register_lock);
 if (ctx->csa.priv2.spu_cfg_RW & 0x1)
  ctx->csa.spu_chnldata_RW[3] |= data;
 else
  ctx->csa.spu_chnldata_RW[3] = data;
 ctx->csa.spu_chnlcnt_RW[3] = 1;
 gen_spu_event(ctx, MFC_SIGNAL_1_EVENT);
 spin_unlock(&ctx->csa.register_lock);
}
