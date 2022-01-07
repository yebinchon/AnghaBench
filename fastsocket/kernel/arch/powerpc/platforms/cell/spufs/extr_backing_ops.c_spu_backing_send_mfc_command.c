
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int register_lock; } ;
struct spu_context {TYPE_1__ csa; } ;
struct mfc_dma_command {int dummy; } ;


 int EAGAIN ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int spu_backing_send_mfc_command(struct spu_context *ctx,
     struct mfc_dma_command *cmd)
{
 int ret;

 spin_lock(&ctx->csa.register_lock);
 ret = -EAGAIN;

 spin_unlock(&ctx->csa.register_lock);

 return ret;
}
