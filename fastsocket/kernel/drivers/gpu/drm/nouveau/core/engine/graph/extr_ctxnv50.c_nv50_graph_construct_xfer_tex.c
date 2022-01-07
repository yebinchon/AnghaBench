
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_grctx {struct nouveau_device* device; } ;
struct nouveau_device {int chipset; } ;


 int IS_NVAAF (int) ;
 int xf_emit (struct nouveau_grctx*,int,int) ;

__attribute__((used)) static void
nv50_graph_construct_xfer_tex(struct nouveau_grctx *ctx)
{
 struct nouveau_device *device = ctx->device;
 xf_emit(ctx, 2, 0);
 if (device->chipset != 0x50)
  xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 1);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 1);
 xf_emit(ctx, 1, 0);
 if (device->chipset == 0x50)
  xf_emit(ctx, 1, 0);
 else
  xf_emit(ctx, 2, 0);
 xf_emit(ctx, 1, 0x2a712488);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0x4085c000);
 xf_emit(ctx, 1, 0x40);
 xf_emit(ctx, 1, 0x100);
 xf_emit(ctx, 1, 0x10100);
 xf_emit(ctx, 1, 0x02800000);
 xf_emit(ctx, 1, 0);
 if (device->chipset == 0x50) {
  xf_emit(ctx, 1, 0);
  xf_emit(ctx, 1, 0);
  xf_emit(ctx, 1, 0);
  xf_emit(ctx, 1, 0);
  xf_emit(ctx, 1, 0);
 } else if (!IS_NVAAF(device->chipset)) {
  xf_emit(ctx, 1, 0);
  xf_emit(ctx, 1, 0);
  xf_emit(ctx, 1, 0);
  xf_emit(ctx, 1, 0);
  xf_emit(ctx, 1, 0);
  xf_emit(ctx, 1, 0);
  xf_emit(ctx, 1, 0);
  xf_emit(ctx, 1, 0);
 } else {
  xf_emit(ctx, 0x6, 0);
 }
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
}
