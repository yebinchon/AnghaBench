
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spu_context {int ibox_fasync; int ibox_wq; } ;
struct spu {struct spu_context* ctx; } ;


 int POLLIN ;
 int SIGIO ;
 int kill_fasync (int *,int ,int ) ;
 int wake_up_all (int *) ;

void spufs_ibox_callback(struct spu *spu)
{
 struct spu_context *ctx = spu->ctx;

 if (!ctx)
  return;

 wake_up_all(&ctx->ibox_wq);
 kill_fasync(&ctx->ibox_fasync, SIGIO, POLLIN);
}
