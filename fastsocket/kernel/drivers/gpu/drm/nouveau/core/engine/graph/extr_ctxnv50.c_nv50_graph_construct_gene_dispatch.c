
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_grctx {struct nouveau_device* device; } ;
struct nouveau_device {int chipset; } ;


 scalar_t__ IS_NVA3F (int) ;
 int xf_emit (struct nouveau_grctx*,int,int ) ;

__attribute__((used)) static void
nv50_graph_construct_gene_dispatch(struct nouveau_grctx *ctx)
{

 struct nouveau_device *device = ctx->device;

 if (device->chipset == 0x50)
  xf_emit(ctx, 5, 0);
 else if (!IS_NVA3F(device->chipset))
  xf_emit(ctx, 6, 0);
 else
  xf_emit(ctx, 4, 0);


 if (device->chipset == 0x50)
  xf_emit(ctx, 8*3, 0);
 else
  xf_emit(ctx, 0x100*3, 0);

 xf_emit(ctx, 3, 0);

 if (IS_NVA3F(device->chipset))
  xf_emit(ctx, 3, 0);


 xf_emit(ctx, 9, 0);

 xf_emit(ctx, 9, 0);

 xf_emit(ctx, 9, 0);

 xf_emit(ctx, 9, 0);

 if (device->chipset < 0x90)
  xf_emit(ctx, 4, 0);

 xf_emit(ctx, 2, 0);

 xf_emit(ctx, 6*2, 0);
 xf_emit(ctx, 2, 0);

 xf_emit(ctx, 2, 0);

 xf_emit(ctx, 6*2, 0);
 xf_emit(ctx, 2, 0);

 if (device->chipset == 0x50)
  xf_emit(ctx, 0x1c, 0);
 else if (device->chipset < 0xa0)
  xf_emit(ctx, 0x1e, 0);
 else
  xf_emit(ctx, 0x22, 0);

 xf_emit(ctx, 0x15, 0);
}
