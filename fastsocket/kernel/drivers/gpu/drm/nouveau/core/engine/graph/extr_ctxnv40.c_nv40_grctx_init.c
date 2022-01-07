
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct nouveau_grctx {size_t* data; int ctxprog_max; size_t ctxprog_len; int ctxvals_pos; int mode; struct nouveau_device* device; } ;
struct nouveau_device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int NOUVEAU_GRCTX_PROG ;
 int kfree (size_t*) ;
 size_t* kmalloc (int,int ) ;
 int nv40_grctx_generate (struct nouveau_grctx*) ;
 int nv_wr32 (struct nouveau_device*,int,size_t) ;

int
nv40_grctx_init(struct nouveau_device *device, u32 *size)
{
 u32 *ctxprog = kmalloc(256 * 4, GFP_KERNEL), i;
 struct nouveau_grctx ctx = {
  .device = device,
  .mode = NOUVEAU_GRCTX_PROG,
  .data = ctxprog,
  .ctxprog_max = 256,
 };

 if (!ctxprog)
  return -ENOMEM;

 nv40_grctx_generate(&ctx);

 nv_wr32(device, 0x400324, 0);
 for (i = 0; i < ctx.ctxprog_len; i++)
  nv_wr32(device, 0x400328, ctxprog[i]);
 *size = ctx.ctxvals_pos * 4;

 kfree(ctxprog);
 return 0;
}
