
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_grctx {int ctxvals_pos; struct nouveau_device* device; } ;
struct nouveau_device {int chipset; } ;


 scalar_t__ IS_NVA3F (int) ;
 int cp_ctx (struct nouveau_grctx*,int,int) ;
 int dd_emit (struct nouveau_grctx*,int,int) ;

__attribute__((used)) static void
nv50_graph_construct_mmio_ddata(struct nouveau_grctx *ctx)
{
 struct nouveau_device *device = ctx->device;
 int base, num;
 base = ctx->ctxvals_pos;


 dd_emit(ctx, 1, 0);
 dd_emit(ctx, 1, 0);


 dd_emit(ctx, 1, 0);
 dd_emit(ctx, 1, 2);
 dd_emit(ctx, 1, 1);
 dd_emit(ctx, 1, 0);
 dd_emit(ctx, 1, 0);
 if (device->chipset >= 0x94)
  dd_emit(ctx, 1, 0);
 dd_emit(ctx, 1, 1);
 dd_emit(ctx, 1, 0x100);


 dd_emit(ctx, 1, 0);
 dd_emit(ctx, 1, 0);
 dd_emit(ctx, 1, 0);
 dd_emit(ctx, 1, 0);
 dd_emit(ctx, 1, 0);
 dd_emit(ctx, 1, 2);
 dd_emit(ctx, 1, 1);
 dd_emit(ctx, 1, 1);
 dd_emit(ctx, 1, 0);
 dd_emit(ctx, 1, 0);
 dd_emit(ctx, 1, 0);
 dd_emit(ctx, 1, 1);
 dd_emit(ctx, 1, 0x3fffff);
 dd_emit(ctx, 1, 0x1fff);
 dd_emit(ctx, 1, 0);
 dd_emit(ctx, 1, 1);
 dd_emit(ctx, 1, 1);
 dd_emit(ctx, 1, 0);
 dd_emit(ctx, 1, 1);
 dd_emit(ctx, 1, 1);
 dd_emit(ctx, 1, 1);
 dd_emit(ctx, 1, 4);
 dd_emit(ctx, 1, 1);
 if (IS_NVA3F(device->chipset))
  dd_emit(ctx, 1, 0);
 dd_emit(ctx, 1, 1);
 dd_emit(ctx, 1, 1);
 dd_emit(ctx, 1, 7);
 dd_emit(ctx, 1, 1);
 dd_emit(ctx, 1, 7);
 dd_emit(ctx, 1, 1);
 dd_emit(ctx, 1, 1);
 dd_emit(ctx, 1, 1);


 if (device->chipset == 0x50) {
  dd_emit(ctx, 4, 0);

  dd_emit(ctx, 1, 1);

  dd_emit(ctx, 1, 1);
  dd_emit(ctx, 1, 0);
  dd_emit(ctx, 1, 1);

  dd_emit(ctx, 1, 0xa);
  dd_emit(ctx, 1, 0);
  dd_emit(ctx, 1, 0);
  dd_emit(ctx, 1, 0);
  dd_emit(ctx, 1, 0x40);
  dd_emit(ctx, 1, 0);
  dd_emit(ctx, 1, 2);
  dd_emit(ctx, 1, 0x100);
  dd_emit(ctx, 1, 1);
  dd_emit(ctx, 1, 0x100);

  dd_emit(ctx, 1, 0);
  dd_emit(ctx, 1, 0);
  dd_emit(ctx, 1, 0);
  dd_emit(ctx, 1, 0);
  dd_emit(ctx, 1, 0);
  dd_emit(ctx, 1, 0);
  dd_emit(ctx, 1, 1);
  dd_emit(ctx, 1, 0);
  dd_emit(ctx, 1, 0);
  dd_emit(ctx, 1, 0);

  dd_emit(ctx, 1, 0);
  dd_emit(ctx, 1, 0);

  dd_emit(ctx, 1, 0);

  dd_emit(ctx, 1, 0);
  dd_emit(ctx, 1, 0);
  dd_emit(ctx, 1, 4);
  dd_emit(ctx, 1, 0);
 }


 dd_emit(ctx, 1, 0);
 dd_emit(ctx, 1, 0);
 dd_emit(ctx, 2, 0);
 dd_emit(ctx, 1, 1);
 dd_emit(ctx, 1, 0x100);
 dd_emit(ctx, 1, 0);
 dd_emit(ctx, 1, 1);
 dd_emit(ctx, 2, 0);
 dd_emit(ctx, 1, 0x100);
 dd_emit(ctx, 1, 1);
 dd_emit(ctx, 1, 0x100);
 dd_emit(ctx, 1, 0);
 dd_emit(ctx, 1, 1);
 dd_emit(ctx, 2, 0);
 dd_emit(ctx, 1, 0x100);


 if (device->chipset == 0x50) {
  dd_emit(ctx, 1, 1);
  dd_emit(ctx, 1, 0);

  dd_emit(ctx, 1, 1);
  dd_emit(ctx, 1, 0);

  dd_emit(ctx, 1, 0);
  dd_emit(ctx, 1, 2);
  dd_emit(ctx, 1, 0);
  dd_emit(ctx, 1, 1);
  dd_emit(ctx, 1, 0);
  dd_emit(ctx, 1, 1);
  dd_emit(ctx, 1, 0);
  dd_emit(ctx, 1, 0);
  dd_emit(ctx, 1, 0);
  dd_emit(ctx, 1, 0);
  dd_emit(ctx, 1, 3);
  dd_emit(ctx, 1, 0);

  dd_emit(ctx, 1, 0);
 }


 dd_emit(ctx, 1, 0);
 dd_emit(ctx, 1, 0);
 dd_emit(ctx, 1, 0);
 dd_emit(ctx, 1, 0);
 dd_emit(ctx, 1, 4);
 dd_emit(ctx, 1, 0x70);
 dd_emit(ctx, 1, 0x80);
 dd_emit(ctx, 1, 0);
 dd_emit(ctx, 1, 0);
 dd_emit(ctx, 1, 0);
 if (IS_NVA3F(device->chipset)) {
  dd_emit(ctx, 1, 0);
  dd_emit(ctx, 1, 0);
 } else {
  dd_emit(ctx, 1, 0);
 }
 dd_emit(ctx, 1, 0xc);
 if (device->chipset != 0x50)
  dd_emit(ctx, 1, 0);
 dd_emit(ctx, 1, 8);
 dd_emit(ctx, 1, 0x14);
 if (device->chipset == 0x50) {
  dd_emit(ctx, 1, 0);
  dd_emit(ctx, 1, 0);
 } else {
  dd_emit(ctx, 1, 0);
  dd_emit(ctx, 1, 0x29);
  dd_emit(ctx, 1, 0x27);
  dd_emit(ctx, 1, 0x26);
  dd_emit(ctx, 1, 8);
  dd_emit(ctx, 1, 4);
  dd_emit(ctx, 1, 0x27);
  dd_emit(ctx, 1, 0);
 }
 dd_emit(ctx, 1, 0);
 dd_emit(ctx, 1, 1);
 dd_emit(ctx, 1, 2);
 dd_emit(ctx, 1, 3);
 dd_emit(ctx, 1, 4);
 dd_emit(ctx, 1, 5);
 dd_emit(ctx, 1, 6);
 dd_emit(ctx, 1, 7);
 dd_emit(ctx, 1, 1);
 dd_emit(ctx, 8, 0);
 dd_emit(ctx, 8, 0);
 dd_emit(ctx, 1, 0xcf);
 dd_emit(ctx, 7, 0);
 if (device->chipset != 0x50)
  dd_emit(ctx, 3, 0);
 else
  dd_emit(ctx, 2, 0);
 dd_emit(ctx, 1, 0);
 dd_emit(ctx, 1, 0x80);
 dd_emit(ctx, 1, 4);
 dd_emit(ctx, 1, 4);
 if (IS_NVA3F(device->chipset)) {
  dd_emit(ctx, 1, 3);
  dd_emit(ctx, 1, 0);
 }
 if (device->chipset != 0x50)
  dd_emit(ctx, 1, 3);
 dd_emit(ctx, 1, 1);
 dd_emit(ctx, 1, 0);
 if (device->chipset != 0x50)
  dd_emit(ctx, 1, 0);
 dd_emit(ctx, 1, 0x12);
 dd_emit(ctx, 1, 0x10);
 dd_emit(ctx, 1, 0xc);
 dd_emit(ctx, 1, 1);
 dd_emit(ctx, 1, 0);
 dd_emit(ctx, 1, 0);
 dd_emit(ctx, 1, 0);
 dd_emit(ctx, 1, 4);
 dd_emit(ctx, 1, 2);
 dd_emit(ctx, 1, 4);
 if (device->chipset >= 0xa0)
  dd_emit(ctx, 1, 0);
 dd_emit(ctx, 1, 0);
 dd_emit(ctx, 1, 0);
 dd_emit(ctx, 1, 0x3fffff);
 dd_emit(ctx, 1, 0x1fff);
 dd_emit(ctx, 1, 0);
 if (device->chipset != 0x50)
  dd_emit(ctx, 8, 0);
 if (device->chipset >= 0xa0) {
  dd_emit(ctx, 1, 1);
  dd_emit(ctx, 1, 1);
  dd_emit(ctx, 1, 2);
  dd_emit(ctx, 1, 0);
 }
 dd_emit(ctx, 1, 4);
 dd_emit(ctx, 1, 0x14);
 dd_emit(ctx, 1, 1);
 dd_emit(ctx, 1, 0);
 dd_emit(ctx, 1, 0);
 if (IS_NVA3F(device->chipset))
  dd_emit(ctx, 1, 0);
 dd_emit(ctx, 1, 2);
 if (device->chipset >= 0xa0)
  dd_emit(ctx, 1, 0);
 dd_emit(ctx, 1, 0);
 if (device->chipset >= 0xa0)
  dd_emit(ctx, 1, 0);
 dd_emit(ctx, 1, 0);
 dd_emit(ctx, 1, 1);
 dd_emit(ctx, 1, 0);
 dd_emit(ctx, 1, 2);
 dd_emit(ctx, 1, 0x1000);
 if (device->chipset != 0x50) {
  dd_emit(ctx, 1, 0xe00);
  dd_emit(ctx, 1, 0x1000);
  dd_emit(ctx, 1, 0x1e00);
 }
 dd_emit(ctx, 1, 0);
 dd_emit(ctx, 1, 1);
 dd_emit(ctx, 1, 1);
 dd_emit(ctx, 1, 1);
 dd_emit(ctx, 1, 1);
 dd_emit(ctx, 1, 1);
 dd_emit(ctx, 1, 0);
 dd_emit(ctx, 1, 0);
 dd_emit(ctx, 1, 0);
 dd_emit(ctx, 1, 0x200);
 if (IS_NVA3F(device->chipset))
  dd_emit(ctx, 1, 0x200);
 dd_emit(ctx, 1, 0);
 if (device->chipset < 0xa0) {
  dd_emit(ctx, 1, 1);
  dd_emit(ctx, 1, 0x70);
  dd_emit(ctx, 1, 0x80);
  dd_emit(ctx, 1, 0);
  dd_emit(ctx, 1, 0);
  dd_emit(ctx, 1, 1);
  dd_emit(ctx, 1, 0x70);
  dd_emit(ctx, 1, 0x80);
  dd_emit(ctx, 1, 0);
 } else {
  dd_emit(ctx, 1, 1);
  dd_emit(ctx, 1, 0xf0);
  dd_emit(ctx, 1, 0xff);
  dd_emit(ctx, 1, 0);
  dd_emit(ctx, 1, 0);
  dd_emit(ctx, 1, 1);
  dd_emit(ctx, 1, 0xf0);
  dd_emit(ctx, 1, 0xff);
  dd_emit(ctx, 1, 0);
  dd_emit(ctx, 1, 9);
 }


 dd_emit(ctx, 1, 0);
 dd_emit(ctx, 1, 0);
 dd_emit(ctx, 1, 1);
 dd_emit(ctx, 1, 0xcf);
 dd_emit(ctx, 1, 0);
 dd_emit(ctx, 1, 1);
 dd_emit(ctx, 1, 0);
 dd_emit(ctx, 1, 0);
 dd_emit(ctx, 1, 0);
 dd_emit(ctx, 1, 0xcf);
 dd_emit(ctx, 1, 0);
 dd_emit(ctx, 1, 2);
 dd_emit(ctx, 1, 0);
 dd_emit(ctx, 1, 1);
 dd_emit(ctx, 1, 0);
 dd_emit(ctx, 1, 1);
 dd_emit(ctx, 1, 0);
 dd_emit(ctx, 1, 0xcf);
 dd_emit(ctx, 1, 0xcf);
 dd_emit(ctx, 1, 1);

 num = ctx->ctxvals_pos - base;
 ctx->ctxvals_pos = base;
 if (IS_NVA3F(device->chipset))
  cp_ctx(ctx, 0x404800, num);
 else
  cp_ctx(ctx, 0x405400, num);
}
