
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nv04_graph_priv {int dummy; } ;
struct nouveau_object {scalar_t__ engine; } ;


 scalar_t__ NV04_PGRAPH_CTX_CACHE1 ;
 scalar_t__ NV04_PGRAPH_CTX_SWITCH1 ;
 int NV04_PGRAPH_TRAPPED_ADDR ;
 int nv_rd32 (struct nv04_graph_priv*,int ) ;
 int nv_ro32 (struct nouveau_object*,int) ;
 int nv_wo32 (struct nouveau_object*,int,int ) ;
 int nv_wr32 (struct nv04_graph_priv*,scalar_t__,int ) ;

__attribute__((used)) static void
nv04_graph_set_ctx1(struct nouveau_object *object, u32 mask, u32 value)
{
 struct nv04_graph_priv *priv = (void *)object->engine;
 int subc = (nv_rd32(priv, NV04_PGRAPH_TRAPPED_ADDR) >> 13) & 0x7;
 u32 tmp;

 tmp = nv_ro32(object, 0x00);
 tmp &= ~mask;
 tmp |= value;
 nv_wo32(object, 0x00, tmp);

 nv_wr32(priv, NV04_PGRAPH_CTX_SWITCH1, tmp);
 nv_wr32(priv, NV04_PGRAPH_CTX_CACHE1 + (subc<<2), tmp);
}
