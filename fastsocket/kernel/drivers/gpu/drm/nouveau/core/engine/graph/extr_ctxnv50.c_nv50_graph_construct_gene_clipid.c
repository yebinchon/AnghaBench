
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_grctx {int dummy; } ;


 int xf_emit (struct nouveau_grctx*,int,int) ;

__attribute__((used)) static void
nv50_graph_construct_gene_clipid(struct nouveau_grctx *ctx)
{


 xf_emit(ctx, 1, 0);

 xf_emit(ctx, 4, 0);
 xf_emit(ctx, 4, 0);
 xf_emit(ctx, 2, 0);
 xf_emit(ctx, 2, 0x04000000);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0x80);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0x80);
 xf_emit(ctx, 1, 0);
}
