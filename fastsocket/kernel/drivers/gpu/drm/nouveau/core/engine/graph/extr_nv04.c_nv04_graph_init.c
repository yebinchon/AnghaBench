
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv04_graph_priv {int base; } ;
struct nouveau_object {int dummy; } ;
struct nouveau_engine {int dummy; } ;


 int NV03_PGRAPH_INTR ;
 int NV03_PGRAPH_INTR_EN ;
 int NV04_PGRAPH_BETA_AND ;
 int NV04_PGRAPH_CTX_CONTROL ;
 int NV04_PGRAPH_CTX_USER ;
 int NV04_PGRAPH_DEBUG_0 ;
 int NV04_PGRAPH_DEBUG_1 ;
 int NV04_PGRAPH_DEBUG_2 ;
 int NV04_PGRAPH_DEBUG_3 ;
 int NV04_PGRAPH_PATTERN_SHAPE ;
 int NV04_PGRAPH_STATE ;
 int NV04_PGRAPH_VALID1 ;
 int NV04_PGRAPH_VALID2 ;
 int nouveau_graph_init (int *) ;
 struct nouveau_engine* nv_engine (struct nouveau_object*) ;
 int nv_mask (struct nv04_graph_priv*,int ,int,int) ;
 int nv_wr32 (struct nv04_graph_priv*,int ,int) ;

__attribute__((used)) static int
nv04_graph_init(struct nouveau_object *object)
{
 struct nouveau_engine *engine = nv_engine(object);
 struct nv04_graph_priv *priv = (void *)engine;
 int ret;

 ret = nouveau_graph_init(&priv->base);
 if (ret)
  return ret;


 nv_wr32(priv, NV03_PGRAPH_INTR, 0xFFFFFFFF);
 nv_wr32(priv, NV03_PGRAPH_INTR_EN, 0xFFFFFFFF);

 nv_wr32(priv, NV04_PGRAPH_VALID1, 0);
 nv_wr32(priv, NV04_PGRAPH_VALID2, 0);


 nv_wr32(priv, NV04_PGRAPH_DEBUG_0, 0x1231c000);


 nv_wr32(priv, NV04_PGRAPH_DEBUG_1, 0x72111100);


 nv_wr32(priv, NV04_PGRAPH_DEBUG_2, 0x11d5f071);



 nv_wr32(priv, NV04_PGRAPH_DEBUG_3, 0xf0d4ff31);


 nv_wr32(priv, NV04_PGRAPH_STATE , 0xFFFFFFFF);
 nv_wr32(priv, NV04_PGRAPH_CTX_CONTROL , 0x10000100);
 nv_mask(priv, NV04_PGRAPH_CTX_USER, 0xff000000, 0x0f000000);


 nv_wr32(priv, NV04_PGRAPH_PATTERN_SHAPE, 0x00000000);
 nv_wr32(priv, NV04_PGRAPH_BETA_AND , 0xFFFFFFFF);
 return 0;
}
