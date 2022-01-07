
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nouveau_grctx {int* data; scalar_t__ mode; int* ctxprog_label; int ctxprog_len; } ;


 int CP_BRA_IP ;
 int CP_BRA_IP_SHIFT ;
 scalar_t__ NOUVEAU_GRCTX_PROG ;

__attribute__((used)) static inline void
cp_name(struct nouveau_grctx *ctx, int name)
{
 u32 *ctxprog = ctx->data;
 int i;

 if (ctx->mode != NOUVEAU_GRCTX_PROG)
  return;

 ctx->ctxprog_label[name] = ctx->ctxprog_len;
 for (i = 0; i < ctx->ctxprog_len; i++) {
  if ((ctxprog[i] & 0xfff00000) != 0xff400000)
   continue;
  if ((ctxprog[i] & CP_BRA_IP) != ((name) << CP_BRA_IP_SHIFT))
   continue;
  ctxprog[i] = (ctxprog[i] & 0x00ff00ff) |
        (ctx->ctxprog_len << CP_BRA_IP_SHIFT);
 }
}
