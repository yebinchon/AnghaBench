
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_3__ {int mfc_control_RW; } ;
struct TYPE_4__ {TYPE_1__ priv2; } ;
struct spu_context {TYPE_2__ csa; } ;


 int MFC_CNTL_DECREMENTER_RUNNING ;
 int spu_acquire_saved (struct spu_context*) ;
 int spu_release_saved (struct spu_context*) ;

__attribute__((used)) static int spufs_decr_status_set(void *data, u64 val)
{
 struct spu_context *ctx = data;
 int ret;

 ret = spu_acquire_saved(ctx);
 if (ret)
  return ret;
 if (val)
  ctx->csa.priv2.mfc_control_RW |= MFC_CNTL_DECREMENTER_RUNNING;
 else
  ctx->csa.priv2.mfc_control_RW &= ~MFC_CNTL_DECREMENTER_RUNNING;
 spu_release_saved(ctx);

 return 0;
}
