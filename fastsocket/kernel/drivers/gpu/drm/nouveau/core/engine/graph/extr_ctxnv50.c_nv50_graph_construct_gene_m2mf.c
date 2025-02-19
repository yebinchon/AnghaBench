
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_grctx {struct nouveau_device* device; } ;
struct nouveau_device {int chipset; } ;


 int xf_emit (struct nouveau_grctx*,int,int) ;

__attribute__((used)) static void
nv50_graph_construct_gene_m2mf(struct nouveau_grctx *ctx)
{

 struct nouveau_device *device = ctx->device;
 int smallm2mf = 0;
 if (device->chipset < 0x92 || device->chipset == 0x98)
  smallm2mf = 1;

 xf_emit (ctx, 1, 0);
 xf_emit (ctx, 1, 0);
 xf_emit (ctx, 1, 0);
 xf_emit (ctx, 1, 0);
 xf_emit (ctx, 1, 0);
 xf_emit (ctx, 1, 0);
 xf_emit (ctx, 1, 0);
 xf_emit (ctx, 1, 0);
 xf_emit (ctx, 1, 0);
 xf_emit (ctx, 1, 0x21);
 xf_emit (ctx, 1, 1);
 xf_emit (ctx, 1, 0x2);
 xf_emit (ctx, 1, 0x100);
 xf_emit (ctx, 1, 0x100);
 xf_emit (ctx, 1, 1);
 xf_emit (ctx, 1, 0);
 xf_emit (ctx, 1, 0);
 xf_emit (ctx, 1, 1);
 xf_emit (ctx, 1, 0x2);
 xf_emit (ctx, 1, 0x100);
 xf_emit (ctx, 1, 0x100);
 xf_emit (ctx, 1, 1);
 xf_emit (ctx, 1, 0);
 xf_emit (ctx, 1, 0);
 xf_emit (ctx, 1, 0);
 xf_emit (ctx, 1, 0);

 if (smallm2mf)
  xf_emit(ctx, 0x40, 0);
 else
  xf_emit(ctx, 0x100, 0);
 xf_emit(ctx, 4, 0);

 if (smallm2mf)
  xf_emit(ctx, 0x400, 0);
 else
  xf_emit(ctx, 0x800, 0);
 xf_emit(ctx, 4, 0);

 xf_emit(ctx, 0x40, 0);
 xf_emit(ctx, 0x6, 0);
}
