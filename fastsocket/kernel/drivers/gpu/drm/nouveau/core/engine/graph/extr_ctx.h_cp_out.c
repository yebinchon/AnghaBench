
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nouveau_grctx {scalar_t__ mode; scalar_t__ ctxprog_len; scalar_t__ ctxprog_max; int * data; } ;


 int BUG_ON (int) ;
 scalar_t__ NOUVEAU_GRCTX_PROG ;

__attribute__((used)) static inline void
cp_out(struct nouveau_grctx *ctx, u32 inst)
{
 u32 *ctxprog = ctx->data;

 if (ctx->mode != NOUVEAU_GRCTX_PROG)
  return;

 BUG_ON(ctx->ctxprog_len == ctx->ctxprog_max);
 ctxprog[ctx->ctxprog_len++] = inst;
}
