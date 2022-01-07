
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_grctx {struct nouveau_device* device; } ;
struct nouveau_device {int chipset; } ;


 scalar_t__ IS_NVA3F (int) ;
 int IS_NVAAF (int) ;
 int xf_emit (struct nouveau_grctx*,int,int) ;

__attribute__((used)) static void
nv50_graph_construct_gene_ropc(struct nouveau_grctx *ctx)
{
 struct nouveau_device *device = ctx->device;
 int magic2;
 if (device->chipset == 0x50) {
  magic2 = 0x00003e60;
 } else if (!IS_NVA3F(device->chipset)) {
  magic2 = 0x001ffe67;
 } else {
  magic2 = 0x00087e67;
 }
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 3, 0);
 xf_emit(ctx, 1, 2);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, magic2);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 if (IS_NVA3F(device->chipset))
  xf_emit(ctx, 1, 1);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 3, 0);
 xf_emit(ctx, 1, 0);
 if (device->chipset >= 0xa0 && !IS_NVAAF(device->chipset))
  xf_emit(ctx, 1, 0x15);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 1);
 xf_emit(ctx, 1, 0x10);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 1);
 xf_emit(ctx, 1, 0);
 if (device->chipset == 0x86 || device->chipset == 0x92 || device->chipset == 0x98 || device->chipset >= 0xa0) {
  xf_emit(ctx, 3, 0);
  xf_emit(ctx, 1, 4);
  xf_emit(ctx, 1, 0x400);
  xf_emit(ctx, 1, 0x300);
  xf_emit(ctx, 1, 0x1001);
  if (device->chipset != 0xa0) {
   if (IS_NVA3F(device->chipset))
    xf_emit(ctx, 1, 0);
   else
    xf_emit(ctx, 1, 0x15);
  }
 }
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 2);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 1);
 xf_emit(ctx, 1, 0x10);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 1);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 2, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0x10);
 xf_emit(ctx, 0x10, 0);
 xf_emit(ctx, 0x10, 0x3f800000);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 3, 0);
 xf_emit(ctx, 2, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 3, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0x10);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0x3f);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 2, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 1);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 1);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 1);
 if (device->chipset >= 0xa0) {
  xf_emit(ctx, 2, 0);
  xf_emit(ctx, 1, 0x1001);
  xf_emit(ctx, 0xb, 0);
 } else {
  xf_emit(ctx, 1, 0);
  xf_emit(ctx, 1, 0);
  xf_emit(ctx, 1, 0);
  xf_emit(ctx, 8, 0);
  xf_emit(ctx, 1, 0);
 }
 xf_emit(ctx, 1, 0x11);
 xf_emit(ctx, 7, 0);
 xf_emit(ctx, 1, 0xf);
 xf_emit(ctx, 7, 0);
 xf_emit(ctx, 1, 0x11);
 xf_emit(ctx, 1, 0);
 if (device->chipset != 0x50) {
  xf_emit(ctx, 1, 0);
  xf_emit(ctx, 1, 0);
 }
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 2, 1);
 xf_emit(ctx, 1, 1);
 xf_emit(ctx, 1, 2);
 xf_emit(ctx, 1, 1);
 xf_emit(ctx, 1, 2);
 xf_emit(ctx, 1, 1);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, magic2);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0x0fac6881);
 if (IS_NVA3F(device->chipset)) {
  xf_emit(ctx, 1, 0);
  xf_emit(ctx, 8, 1);
  xf_emit(ctx, 8, 1);
  xf_emit(ctx, 8, 1);
  xf_emit(ctx, 8, 2);
  xf_emit(ctx, 8, 1);
  xf_emit(ctx, 8, 2);
  xf_emit(ctx, 8, 1);
  xf_emit(ctx, 1, 0);
  xf_emit(ctx, 2, 0);
  xf_emit(ctx, 1, 1);
  xf_emit(ctx, 1, 0);
  xf_emit(ctx, 1, 0);
  xf_emit(ctx, 1, 0);
  xf_emit(ctx, 2, 0);
  xf_emit(ctx, 1, 1);
  xf_emit(ctx, 1, 0);
  xf_emit(ctx, 1, 0);
 } else if (device->chipset >= 0xa0) {
  xf_emit(ctx, 2, 0);
  xf_emit(ctx, 1, 0);
  xf_emit(ctx, 1, 0);
  xf_emit(ctx, 1, 0);
  xf_emit(ctx, 2, 0);
 } else {
  xf_emit(ctx, 1, 0);
  xf_emit(ctx, 1, 0);
  xf_emit(ctx, 1, 0);
 }
 xf_emit(ctx, 4, 0);
 xf_emit(ctx, 4, 0);
 xf_emit(ctx, 1, 0);
 if (device->chipset >= 0xa0)
  xf_emit(ctx, 2, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 8, 0);
 xf_emit(ctx, 1, 1);
 xf_emit(ctx, 1, 2);
 xf_emit(ctx, 1, 1);
 xf_emit(ctx, 1, 1);
 xf_emit(ctx, 1, 2);
 xf_emit(ctx, 1, 1);
 xf_emit(ctx, 1, 1);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 if (device->chipset >= 0xa0)
  xf_emit(ctx, 1, 0);
 if (IS_NVA3F(device->chipset)) {
  xf_emit(ctx, 8, 1);
  xf_emit(ctx, 8, 1);
  xf_emit(ctx, 8, 2);
  xf_emit(ctx, 8, 1);
  xf_emit(ctx, 8, 1);
  xf_emit(ctx, 8, 2);
  xf_emit(ctx, 8, 1);
  xf_emit(ctx, 1, 0);
  xf_emit(ctx, 1, 0);
  xf_emit(ctx, 1, 0);
 }
 xf_emit(ctx, 1, 0x11);
 xf_emit(ctx, 1, 1);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 2, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 2, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 0x50, 0);
}
