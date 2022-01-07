
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_grctx {struct nouveau_device* device; } ;
struct nouveau_device {int chipset; } ;


 int xf_emit (struct nouveau_grctx*,int,int) ;

__attribute__((used)) static void
nv50_graph_construct_gene_csched(struct nouveau_grctx *ctx)
{
 struct nouveau_device *device = ctx->device;


 xf_emit(ctx, 2, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0x8100c12);
 xf_emit(ctx, 1, 0);

 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0x100);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0x10001);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0x10001);
 xf_emit(ctx, 1, 1);
 xf_emit(ctx, 1, 0x10001);
 xf_emit(ctx, 1, 1);
 xf_emit(ctx, 1, 4);
 xf_emit(ctx, 1, 2);

 xf_emit(ctx, 0x40, 0);
 switch (device->chipset) {
 case 0x50:
 case 0x92:
  xf_emit(ctx, 8, 0);
  xf_emit(ctx, 0x80, 0);
  xf_emit(ctx, 2, 0);
  xf_emit(ctx, 0x10*2, 0);
  break;
 case 0x84:
  xf_emit(ctx, 8, 0);
  xf_emit(ctx, 0x60, 0);
  xf_emit(ctx, 2, 0);
  xf_emit(ctx, 0xc*2, 0);
  break;
 case 0x94:
 case 0x96:
  xf_emit(ctx, 8, 0);
  xf_emit(ctx, 0x40, 0);
  xf_emit(ctx, 2, 0);
  xf_emit(ctx, 8*2, 0);
  break;
 case 0x86:
 case 0x98:
  xf_emit(ctx, 4, 0);
  xf_emit(ctx, 0x10, 0);
  xf_emit(ctx, 2, 0);
  xf_emit(ctx, 2*2, 0);
  break;
 case 0xa0:
  xf_emit(ctx, 8, 0);
  xf_emit(ctx, 0xf0, 0);
  xf_emit(ctx, 2, 0);
  xf_emit(ctx, 0x1e*2, 0);
  break;
 case 0xa3:
  xf_emit(ctx, 8, 0);
  xf_emit(ctx, 0x60, 0);
  xf_emit(ctx, 2, 0);
  xf_emit(ctx, 0xc*2, 0);
  break;
 case 0xa5:
 case 0xaf:
  xf_emit(ctx, 8, 0);
  xf_emit(ctx, 0x30, 0);
  xf_emit(ctx, 2, 0);
  xf_emit(ctx, 6*2, 0);
  break;
 case 0xaa:
  xf_emit(ctx, 0x12, 0);
  break;
 case 0xa8:
 case 0xac:
  xf_emit(ctx, 4, 0);
  xf_emit(ctx, 0x10, 0);
  xf_emit(ctx, 2, 0);
  xf_emit(ctx, 2*2, 0);
  break;
 }
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 4, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 4, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
}
