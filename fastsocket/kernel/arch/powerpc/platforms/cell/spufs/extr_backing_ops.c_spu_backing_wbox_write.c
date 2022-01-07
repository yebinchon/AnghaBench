
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int int_mask_class2_RW; } ;
struct TYPE_4__ {int mb_stat_R; } ;
struct TYPE_6__ {int* spu_chnlcnt_RW; int register_lock; TYPE_2__ priv1; TYPE_1__ prob; int * spu_mailbox_data; } ;
struct spu_context {TYPE_3__ csa; } ;


 int BUG_ON (int) ;
 int CLASS2_ENABLE_MAILBOX_THRESHOLD_INTR ;
 int MFC_SPU_MAILBOX_WRITTEN_EVENT ;
 int gen_spu_event (struct spu_context*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int spu_backing_wbox_write(struct spu_context *ctx, u32 data)
{
 int ret;

 spin_lock(&ctx->csa.register_lock);
 if ((ctx->csa.prob.mb_stat_R) & 0x00ff00) {
  int slot = ctx->csa.spu_chnlcnt_RW[29];
  int avail = (ctx->csa.prob.mb_stat_R & 0x00ff00) >> 8;





  BUG_ON(avail != (4 - slot));
  ctx->csa.spu_mailbox_data[slot] = data;
  ctx->csa.spu_chnlcnt_RW[29] = ++slot;
  ctx->csa.prob.mb_stat_R &= ~(0x00ff00);
  ctx->csa.prob.mb_stat_R |= (((4 - slot) & 0xff) << 8);
  gen_spu_event(ctx, MFC_SPU_MAILBOX_WRITTEN_EVENT);
  ret = 4;
 } else {


  ctx->csa.priv1.int_mask_class2_RW |=
   CLASS2_ENABLE_MAILBOX_THRESHOLD_INTR;
  ret = 0;
 }
 spin_unlock(&ctx->csa.register_lock);
 return ret;
}
