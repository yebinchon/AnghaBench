
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_grctx {struct nouveau_device* device; } ;
struct nouveau_device {int chipset; } ;


 scalar_t__ IS_NVA3F (int) ;
 int xf_emit (struct nouveau_grctx*,int,int) ;

__attribute__((used)) static void
nv50_graph_construct_gene_unk34xx(struct nouveau_grctx *ctx)
{
 struct nouveau_device *device = ctx->device;

 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 0x10, 0x04000000);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 0x20, 0);
 xf_emit(ctx, 2, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0x04e3bfdf);
 xf_emit(ctx, 1, 0x04e3bfdf);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0x1fe21);
 if (device->chipset >= 0xa0)
  xf_emit(ctx, 1, 0x0fac6881);
 if (IS_NVA3F(device->chipset)) {
  xf_emit(ctx, 1, 1);
  xf_emit(ctx, 3, 0);
 }
}
