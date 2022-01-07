
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nouveau_grctx {scalar_t__ mode; int ctxvals_pos; int data; } ;


 scalar_t__ NOUVEAU_GRCTX_VALS ;
 int nv_wo32 (int ,int,int ) ;

__attribute__((used)) static void
dd_emit(struct nouveau_grctx *ctx, int num, u32 val) {
 int i;
 if (val && ctx->mode == NOUVEAU_GRCTX_VALS)
  for (i = 0; i < num; i++)
   nv_wo32(ctx->data, 4 * (ctx->ctxvals_pos + i), val);
 ctx->ctxvals_pos += num;
}
