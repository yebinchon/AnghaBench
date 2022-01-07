
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_grctx {struct nouveau_device* device; } ;
struct nouveau_device {int chipset; } ;


 scalar_t__ IS_NVA3F (int) ;
 int xf_emit (struct nouveau_grctx*,int,int) ;

__attribute__((used)) static void
nv50_graph_construct_gene_unk24xx(struct nouveau_grctx *ctx)
{
 struct nouveau_device *device = ctx->device;
 int i;


 xf_emit(ctx, 0x33, 0);

 xf_emit(ctx, 2, 0);

 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 4);
 xf_emit(ctx, 1, 4);

 if (IS_NVA3F(device->chipset)) {
  xf_emit(ctx, 4, 0);
  xf_emit(ctx, 0xe10, 0);
  xf_emit(ctx, 1, 0);
  xf_emit(ctx, 8, 0);
  xf_emit(ctx, 9, 0);

  xf_emit(ctx, 4, 0);
  xf_emit(ctx, 0xe10, 0);
  xf_emit(ctx, 1, 0);
  xf_emit(ctx, 8, 0);
  xf_emit(ctx, 9, 0);
 } else {
  xf_emit(ctx, 0xc, 0);

  xf_emit(ctx, 0xe10, 0);
  xf_emit(ctx, 1, 0);
  xf_emit(ctx, 8, 0);


  xf_emit(ctx, 0xc, 0);

  xf_emit(ctx, 0xe10, 0);
  xf_emit(ctx, 1, 0);
  xf_emit(ctx, 8, 0);
 }

 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 4);
 xf_emit(ctx, 1, 4);
 xf_emit(ctx, 1, 0x8100c12);
 if (device->chipset != 0x50)
  xf_emit(ctx, 1, 3);

 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0x8100c12);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0x80c14);
 xf_emit(ctx, 1, 1);

 if (device->chipset >= 0xa0)
  xf_emit(ctx, 2, 4);
 xf_emit(ctx, 1, 0x80c14);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0x8100c12);
 xf_emit(ctx, 1, 0x27);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 1);
 for (i = 0; i < 10; i++) {

  xf_emit(ctx, 0x40, 0);
  xf_emit(ctx, 0x10, 0);
  xf_emit(ctx, 0x10, 0);
 }

 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 1);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 4, 0);
 xf_emit(ctx, 0x10, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0x8100c12);
 if (device->chipset != 0x50)
  xf_emit(ctx, 1, 0);
}
