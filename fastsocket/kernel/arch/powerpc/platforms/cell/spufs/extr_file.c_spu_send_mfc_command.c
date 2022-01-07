
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spu_context {TYPE_1__* ops; int tagwait; } ;
struct mfc_dma_command {int dummy; } ;
struct TYPE_2__ {int (* send_mfc_command ) (struct spu_context*,struct mfc_dma_command*) ;int (* set_mfc_query ) (struct spu_context*,int ,int) ;} ;


 int EAGAIN ;
 int stub1 (struct spu_context*,struct mfc_dma_command*) ;
 int stub2 (struct spu_context*,int ,int) ;
 int stub3 (struct spu_context*,struct mfc_dma_command*) ;

__attribute__((used)) static int spu_send_mfc_command(struct spu_context *ctx,
    struct mfc_dma_command cmd,
    int *error)
{
 *error = ctx->ops->send_mfc_command(ctx, &cmd);
 if (*error == -EAGAIN) {


  ctx->ops->set_mfc_query(ctx, ctx->tagwait, 1);


  *error = ctx->ops->send_mfc_command(ctx, &cmd);
  if (*error == -EAGAIN)
   return 0;
 }
 return 1;
}
