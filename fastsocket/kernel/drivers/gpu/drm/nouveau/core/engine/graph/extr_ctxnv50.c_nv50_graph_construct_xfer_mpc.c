
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_grctx {struct nouveau_device* device; } ;
struct nouveau_device {int chipset; } ;


 scalar_t__ IS_NVA3F (int) ;
 scalar_t__ IS_NVAAF (int) ;
 int xf_emit (struct nouveau_grctx*,int,int) ;

__attribute__((used)) static void
nv50_graph_construct_xfer_mpc(struct nouveau_grctx *ctx)
{
 struct nouveau_device *device = ctx->device;
 int i, mpcnt = 2;
 switch (device->chipset) {
  case 0x98:
  case 0xaa:
   mpcnt = 1;
   break;
  case 0x50:
  case 0x84:
  case 0x86:
  case 0x92:
  case 0x94:
  case 0x96:
  case 0xa8:
  case 0xac:
   mpcnt = 2;
   break;
  case 0xa0:
  case 0xa3:
  case 0xa5:
  case 0xaf:
   mpcnt = 3;
   break;
 }
 for (i = 0; i < mpcnt; i++) {
  xf_emit(ctx, 1, 0);
  xf_emit(ctx, 1, 0x80);
  xf_emit(ctx, 1, 0x80007004);
  xf_emit(ctx, 1, 0x04000400);
  if (device->chipset >= 0xa0)
   xf_emit(ctx, 1, 0xc0);
  xf_emit(ctx, 1, 0x1000);
  xf_emit(ctx, 1, 0);
  xf_emit(ctx, 1, 0);
  if (device->chipset == 0x86 || device->chipset == 0x98 || device->chipset == 0xa8 || IS_NVAAF(device->chipset)) {
   xf_emit(ctx, 1, 0xe00);
   xf_emit(ctx, 1, 0x1e00);
  }
  xf_emit(ctx, 1, 1);
  xf_emit(ctx, 1, 0);
  xf_emit(ctx, 1, 0);
  if (device->chipset == 0x50)
   xf_emit(ctx, 2, 0x1000);
  xf_emit(ctx, 1, 1);
  xf_emit(ctx, 1, 0);
  xf_emit(ctx, 1, 4);
  xf_emit(ctx, 1, 2);
  if (IS_NVAAF(device->chipset))
   xf_emit(ctx, 0xb, 0);
  else if (device->chipset >= 0xa0)
   xf_emit(ctx, 0xc, 0);
  else
   xf_emit(ctx, 0xa, 0);
 }
 xf_emit(ctx, 1, 0x08100c12);
 xf_emit(ctx, 1, 0);
 if (device->chipset >= 0xa0) {
  xf_emit(ctx, 1, 0x1fe21);
 }
 xf_emit(ctx, 3, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 4, 0xffff);
 xf_emit(ctx, 1, 1);
 xf_emit(ctx, 1, 0x10001);
 xf_emit(ctx, 1, 0x10001);
 xf_emit(ctx, 1, 1);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0x1fe21);
 xf_emit(ctx, 1, 0);
 if (IS_NVA3F(device->chipset))
  xf_emit(ctx, 1, 1);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0x08100c12);
 xf_emit(ctx, 1, 4);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 2);
 xf_emit(ctx, 1, 0x11);
 xf_emit(ctx, 7, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0xfac6881);
 xf_emit(ctx, 1, 0);
 if (IS_NVA3F(device->chipset))
  xf_emit(ctx, 1, 3);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 4);
 xf_emit(ctx, 8, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 2);
 xf_emit(ctx, 1, 1);
 xf_emit(ctx, 1, 1);
 xf_emit(ctx, 1, 2);
 xf_emit(ctx, 1, 1);
 xf_emit(ctx, 1, 1);
 xf_emit(ctx, 1, 1);
 if (IS_NVA3F(device->chipset)) {
  xf_emit(ctx, 1, 0);
  xf_emit(ctx, 8, 2);
  xf_emit(ctx, 8, 1);
  xf_emit(ctx, 8, 1);
  xf_emit(ctx, 8, 2);
  xf_emit(ctx, 8, 1);
  xf_emit(ctx, 8, 1);
  xf_emit(ctx, 8, 1);
  xf_emit(ctx, 1, 0);
  xf_emit(ctx, 1, 0);
 }
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 4);

 if (device->chipset == 0x50)
  xf_emit(ctx, 0x3a0, 0);
 else if (device->chipset < 0x94)
  xf_emit(ctx, 0x3a2, 0);
 else if (device->chipset == 0x98 || device->chipset == 0xaa)
  xf_emit(ctx, 0x39f, 0);
 else
  xf_emit(ctx, 0x3a3, 0);
 xf_emit(ctx, 1, 0x11);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 1);
 xf_emit(ctx, 0x2d, 0);
}
