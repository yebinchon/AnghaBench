
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nv31_mpeg_priv {int base; } ;
struct nouveau_object {int engine; } ;
struct TYPE_2__ {int regions; } ;
struct nouveau_fb {TYPE_1__ tile; } ;
struct nouveau_engine {int (* tile_prog ) (struct nouveau_engine*,int) ;} ;


 int EBUSY ;
 struct nouveau_fb* nouveau_fb (struct nouveau_object*) ;
 int nouveau_mpeg_init (int *) ;
 scalar_t__ nv44_graph_class (struct nv31_mpeg_priv*) ;
 struct nouveau_engine* nv_engine (int ) ;
 int nv_error (struct nv31_mpeg_priv*,char*,int ) ;
 int nv_mask (struct nv31_mpeg_priv*,int,int,int) ;
 int nv_rd32 (struct nv31_mpeg_priv*,int) ;
 int nv_wait (struct nv31_mpeg_priv*,int,int,int) ;
 int nv_wr32 (struct nv31_mpeg_priv*,int,int) ;
 int stub1 (struct nouveau_engine*,int) ;

int
nv31_mpeg_init(struct nouveau_object *object)
{
 struct nouveau_engine *engine = nv_engine(object->engine);
 struct nv31_mpeg_priv *priv = (void *)engine;
 struct nouveau_fb *pfb = nouveau_fb(object);
 int ret, i;

 ret = nouveau_mpeg_init(&priv->base);
 if (ret)
  return ret;


 nv_wr32(priv, 0x00b0e0, 0x00000020);
 nv_wr32(priv, 0x00b0e8, 0x00000020);

 for (i = 0; i < pfb->tile.regions; i++)
  engine->tile_prog(engine, i);


 nv_wr32(priv, 0x00b32c, 0x00000000);
 nv_wr32(priv, 0x00b314, 0x00000100);
 nv_wr32(priv, 0x00b220, nv44_graph_class(priv) ? 0x00000044 : 0x00000031);
 nv_wr32(priv, 0x00b300, 0x02001ec1);
 nv_mask(priv, 0x00b32c, 0x00000001, 0x00000001);

 nv_wr32(priv, 0x00b100, 0xffffffff);
 nv_wr32(priv, 0x00b140, 0xffffffff);

 if (!nv_wait(priv, 0x00b200, 0x00000001, 0x00000000)) {
  nv_error(priv, "timeout 0x%08x\n", nv_rd32(priv, 0x00b200));
  return -EBUSY;
 }

 return 0;
}
