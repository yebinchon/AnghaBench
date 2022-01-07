
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_grctx {struct nouveau_device* device; } ;
struct nouveau_device {int chipset; } ;


 scalar_t__ IS_NVA3F (int) ;
 int xf_emit (struct nouveau_grctx*,int,int) ;

__attribute__((used)) static void
nv50_graph_construct_gene_unk1cxx(struct nouveau_grctx *ctx)
{
 struct nouveau_device *device = ctx->device;
 xf_emit(ctx, 2, 0);
 xf_emit(ctx, 1, 0x3f800000);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 3, 0);
 xf_emit(ctx, 1, 4);
 xf_emit(ctx, 1, 0x1a);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 1);
 xf_emit(ctx, 0x10, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0x00ffff00);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 2, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0xf);
 xf_emit(ctx, 7, 0);
 xf_emit(ctx, 1, 0x0fac6881);
 xf_emit(ctx, 1, 0x11);
 xf_emit(ctx, 7, 0);
 xf_emit(ctx, 8, 0);
 xf_emit(ctx, 1, 4);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 if (IS_NVA3F(device->chipset))
  xf_emit(ctx, 1, 3);
 else if (device->chipset >= 0xa0)
  xf_emit(ctx, 1, 1);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 2);
 xf_emit(ctx, 2, 0x04000000);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 5);
 xf_emit(ctx, 1, 0x52);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 if (device->chipset != 0x50) {
  xf_emit(ctx, 1, 0);
  xf_emit(ctx, 1, 1);
 }
 if (IS_NVA3F(device->chipset))
  xf_emit(ctx, 1, 0);
 xf_emit(ctx, 0x10, 0);
 xf_emit(ctx, 0x10, 0x3f800000);
 xf_emit(ctx, 1, 0x10);
 xf_emit(ctx, 0x20, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0x8100c12);
 xf_emit(ctx, 1, 5);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 1);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 4, 0xffff);
 if (device->chipset != 0x50)
  xf_emit(ctx, 1, 3);
 if (device->chipset < 0xa0)
  xf_emit(ctx, 0x1c, 0);
 else if (IS_NVA3F(device->chipset))
  xf_emit(ctx, 0x9, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0x00ffff00);
 xf_emit(ctx, 1, 0x1a);
 xf_emit(ctx, 1, 0);
 if (device->chipset != 0x50) {
  xf_emit(ctx, 1, 3);
  xf_emit(ctx, 1, 0);
 }


 if (device->chipset < 0xa0)
  xf_emit(ctx, 0x25, 0);
 else
  xf_emit(ctx, 0x3b, 0);
}
