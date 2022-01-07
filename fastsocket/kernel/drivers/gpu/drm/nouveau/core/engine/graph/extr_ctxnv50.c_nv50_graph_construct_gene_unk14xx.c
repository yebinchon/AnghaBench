
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_grctx {struct nouveau_device* device; } ;
struct nouveau_device {int chipset; } ;


 scalar_t__ IS_NVA3F (int) ;
 int xf_emit (struct nouveau_grctx*,int,int) ;

__attribute__((used)) static void
nv50_graph_construct_gene_unk14xx(struct nouveau_grctx *ctx)
{
 struct nouveau_device *device = ctx->device;

 if (device->chipset != 0x50) {
  xf_emit(ctx, 5, 0);
  xf_emit(ctx, 1, 0x80c14);
  xf_emit(ctx, 1, 0);
  xf_emit(ctx, 1, 0);
  xf_emit(ctx, 1, 0x804);
  xf_emit(ctx, 1, 0);
  xf_emit(ctx, 2, 4);
  xf_emit(ctx, 1, 0x8100c12);
 }
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 4);
 xf_emit(ctx, 1, 4);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0x10);
 xf_emit(ctx, 1, 0);
 if (device->chipset != 0x50)
  xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0x804);
 xf_emit(ctx, 1, 1);
 xf_emit(ctx, 1, 0x1a);
 if (device->chipset != 0x50)
  xf_emit(ctx, 1, 0x7f);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 1);
 xf_emit(ctx, 1, 0x80c14);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0x8100c12);
 xf_emit(ctx, 1, 4);
 xf_emit(ctx, 1, 4);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0x10);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 1);
 xf_emit(ctx, 1, 0x8100c12);
 xf_emit(ctx, 4, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 if (device->chipset == 0x50)
  xf_emit(ctx, 1, 0x3ff);
 else
  xf_emit(ctx, 1, 0x7ff);
 xf_emit(ctx, 1, 0x80c14);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 0x30, 0);
 xf_emit(ctx, 3, 0);
 xf_emit(ctx, 3, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 1);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0x10);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 0x30, 0);
 xf_emit(ctx, 3, 0);
 xf_emit(ctx, 3, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 2, 0x88);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 4);
 xf_emit(ctx, 2, 0);
 xf_emit(ctx, 2, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 0x10, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0x26);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0x3f800000);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 if (IS_NVA3F(device->chipset))
  xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0x1a);
 xf_emit(ctx, 1, 0x10);
 if (device->chipset != 0x50) {
  xf_emit(ctx, 1, 0);
  xf_emit(ctx, 1, 0);
  xf_emit(ctx, 1, 0);
 }
 xf_emit(ctx, 0x20, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0x52);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0x26);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 4);
 xf_emit(ctx, 1, 4);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0x1a);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0x00ffff00);
 xf_emit(ctx, 1, 0);
}
