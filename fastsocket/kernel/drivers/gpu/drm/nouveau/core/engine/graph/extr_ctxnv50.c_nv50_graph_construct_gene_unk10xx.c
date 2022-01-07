
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_grctx {struct nouveau_device* device; } ;
struct nouveau_device {int chipset; } ;


 int xf_emit (struct nouveau_grctx*,int,int) ;

__attribute__((used)) static void
nv50_graph_construct_gene_unk10xx(struct nouveau_grctx *ctx)
{
 struct nouveau_device *device = ctx->device;
 int i;

 xf_emit(ctx, 1, 4);
 xf_emit(ctx, 1, 4);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0x80);
 xf_emit(ctx, 1, 4);
 xf_emit(ctx, 1, 0x80c14);
 xf_emit(ctx, 1, 0);
 if (device->chipset == 0x50)
  xf_emit(ctx, 1, 0x3ff);
 else
  xf_emit(ctx, 1, 0x7ff);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 for (i = 0; i < 8; i++) {
  switch (device->chipset) {
  case 0x50:
  case 0x86:
  case 0x98:
  case 0xaa:
  case 0xac:
   xf_emit(ctx, 0xa0, 0);
   break;
  case 0x84:
  case 0x92:
  case 0x94:
  case 0x96:
   xf_emit(ctx, 0x120, 0);
   break;
  case 0xa5:
  case 0xa8:
   xf_emit(ctx, 0x100, 0);
   break;
  case 0xa0:
  case 0xa3:
  case 0xaf:
   xf_emit(ctx, 0x400, 0);
   break;
  }
  xf_emit(ctx, 4, 0);
  xf_emit(ctx, 4, 0);
 }
 xf_emit(ctx, 1, 4);
 xf_emit(ctx, 1, 4);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0x80);
 xf_emit(ctx, 1, 4);
 xf_emit(ctx, 1, 1);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0x27);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0x26);
 xf_emit(ctx, 1, 0);
}
