
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nv10_graph_priv {int base; } ;
struct nouveau_object {int dummy; } ;
struct TYPE_3__ {int regions; } ;
struct nouveau_fb {TYPE_1__ tile; } ;
struct nouveau_engine {int (* tile_prog ) (struct nouveau_engine*,int) ;} ;
struct TYPE_4__ {int chipset; } ;


 int NV03_PGRAPH_INTR ;
 int NV03_PGRAPH_INTR_EN ;
 int NV04_PGRAPH_DEBUG_0 ;
 int NV04_PGRAPH_DEBUG_1 ;
 int NV04_PGRAPH_DEBUG_2 ;
 int NV04_PGRAPH_DEBUG_3 ;
 int NV10_PGRAPH_CTX_CONTROL ;
 int NV10_PGRAPH_CTX_SWITCH (int) ;
 int NV10_PGRAPH_CTX_USER ;
 int NV10_PGRAPH_DEBUG_4 ;
 int NV10_PGRAPH_FFINTFC_ST2 ;
 int NV10_PGRAPH_STATE ;
 struct nouveau_fb* nouveau_fb (struct nouveau_object*) ;
 int nouveau_graph_init (int *) ;
 TYPE_2__* nv_device (struct nv10_graph_priv*) ;
 struct nouveau_engine* nv_engine (struct nouveau_object*) ;
 int nv_mask (struct nv10_graph_priv*,int ,int,int) ;
 int nv_wr32 (struct nv10_graph_priv*,int,int) ;
 int stub1 (struct nouveau_engine*,int) ;

__attribute__((used)) static int
nv10_graph_init(struct nouveau_object *object)
{
 struct nouveau_engine *engine = nv_engine(object);
 struct nouveau_fb *pfb = nouveau_fb(object);
 struct nv10_graph_priv *priv = (void *)engine;
 int ret, i;

 ret = nouveau_graph_init(&priv->base);
 if (ret)
  return ret;

 nv_wr32(priv, NV03_PGRAPH_INTR , 0xFFFFFFFF);
 nv_wr32(priv, NV03_PGRAPH_INTR_EN, 0xFFFFFFFF);

 nv_wr32(priv, NV04_PGRAPH_DEBUG_0, 0xFFFFFFFF);
 nv_wr32(priv, NV04_PGRAPH_DEBUG_0, 0x00000000);
 nv_wr32(priv, NV04_PGRAPH_DEBUG_1, 0x00118700);

 nv_wr32(priv, NV04_PGRAPH_DEBUG_2, 0x25f92ad9);
 nv_wr32(priv, NV04_PGRAPH_DEBUG_3, 0x55DE0830 | (1 << 29) | (1 << 31));

 if (nv_device(priv)->chipset >= 0x17) {
  nv_wr32(priv, NV10_PGRAPH_DEBUG_4, 0x1f000000);
  nv_wr32(priv, 0x400a10, 0x03ff3fb6);
  nv_wr32(priv, 0x400838, 0x002f8684);
  nv_wr32(priv, 0x40083c, 0x00115f3f);
  nv_wr32(priv, 0x4006b0, 0x40000020);
 } else {
  nv_wr32(priv, NV10_PGRAPH_DEBUG_4, 0x00000000);
 }


 for (i = 0; i < pfb->tile.regions; i++)
  engine->tile_prog(engine, i);

 nv_wr32(priv, NV10_PGRAPH_CTX_SWITCH(0), 0x00000000);
 nv_wr32(priv, NV10_PGRAPH_CTX_SWITCH(1), 0x00000000);
 nv_wr32(priv, NV10_PGRAPH_CTX_SWITCH(2), 0x00000000);
 nv_wr32(priv, NV10_PGRAPH_CTX_SWITCH(3), 0x00000000);
 nv_wr32(priv, NV10_PGRAPH_CTX_SWITCH(4), 0x00000000);
 nv_wr32(priv, NV10_PGRAPH_STATE, 0xFFFFFFFF);

 nv_mask(priv, NV10_PGRAPH_CTX_USER, 0xff000000, 0x1f000000);
 nv_wr32(priv, NV10_PGRAPH_CTX_CONTROL, 0x10000100);
 nv_wr32(priv, NV10_PGRAPH_FFINTFC_ST2, 0x08000000);
 return 0;
}
