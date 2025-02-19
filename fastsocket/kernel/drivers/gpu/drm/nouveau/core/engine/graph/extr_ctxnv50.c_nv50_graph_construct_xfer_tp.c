
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_grctx {struct nouveau_device* device; } ;
struct nouveau_device {int chipset; } ;


 int nv50_graph_construct_xfer_tex (struct nouveau_grctx*) ;
 int nv50_graph_construct_xfer_tprop (struct nouveau_grctx*) ;
 int nv50_graph_construct_xfer_unk84xx (struct nouveau_grctx*) ;
 int nv50_graph_construct_xfer_unk8cxx (struct nouveau_grctx*) ;

__attribute__((used)) static void
nv50_graph_construct_xfer_tp(struct nouveau_grctx *ctx)
{
 struct nouveau_device *device = ctx->device;
 if (device->chipset < 0xa0) {
  nv50_graph_construct_xfer_unk84xx(ctx);
  nv50_graph_construct_xfer_tprop(ctx);
  nv50_graph_construct_xfer_tex(ctx);
  nv50_graph_construct_xfer_unk8cxx(ctx);
 } else {
  nv50_graph_construct_xfer_tex(ctx);
  nv50_graph_construct_xfer_tprop(ctx);
  nv50_graph_construct_xfer_unk8cxx(ctx);
  nv50_graph_construct_xfer_unk84xx(ctx);
 }
}
