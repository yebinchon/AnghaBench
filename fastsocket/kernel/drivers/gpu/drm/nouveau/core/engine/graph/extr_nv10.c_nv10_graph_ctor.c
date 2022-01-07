
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct nv10_graph_priv {int lock; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct TYPE_6__ {int chipset; } ;
struct TYPE_5__ {int tile_prog; int sclass; int * cclass; } ;
struct TYPE_4__ {int unit; int intr; } ;


 int nouveau_graph_create (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int,struct nv10_graph_priv**) ;
 int nv10_graph_cclass ;
 int nv10_graph_intr ;
 int nv10_graph_sclass ;
 int nv10_graph_tile_prog ;
 int nv15_graph_sclass ;
 int nv17_graph_sclass ;
 TYPE_3__* nv_device (struct nv10_graph_priv*) ;
 TYPE_2__* nv_engine (struct nv10_graph_priv*) ;
 struct nouveau_object* nv_object (struct nv10_graph_priv*) ;
 TYPE_1__* nv_subdev (struct nv10_graph_priv*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int
nv10_graph_ctor(struct nouveau_object *parent, struct nouveau_object *engine,
  struct nouveau_oclass *oclass, void *data, u32 size,
  struct nouveau_object **pobject)
{
 struct nv10_graph_priv *priv;
 int ret;

 ret = nouveau_graph_create(parent, engine, oclass, 1, &priv);
 *pobject = nv_object(priv);
 if (ret)
  return ret;

 nv_subdev(priv)->unit = 0x00001000;
 nv_subdev(priv)->intr = nv10_graph_intr;
 nv_engine(priv)->cclass = &nv10_graph_cclass;

 if (nv_device(priv)->chipset <= 0x10)
  nv_engine(priv)->sclass = nv10_graph_sclass;
 else
 if (nv_device(priv)->chipset < 0x17 ||
     nv_device(priv)->chipset == 0x1a)
  nv_engine(priv)->sclass = nv15_graph_sclass;
 else
  nv_engine(priv)->sclass = nv17_graph_sclass;

 nv_engine(priv)->tile_prog = nv10_graph_tile_prog;
 spin_lock_init(&priv->lock);
 return 0;
}
