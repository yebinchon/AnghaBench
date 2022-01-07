
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct nv40_graph_priv {int dummy; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct TYPE_4__ {int tile_prog; int sclass; int * cclass; } ;
struct TYPE_3__ {int unit; int intr; } ;


 int nouveau_graph_create (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int,struct nv40_graph_priv**) ;
 int nv40_graph_cclass ;
 int nv40_graph_intr ;
 int nv40_graph_sclass ;
 int nv40_graph_tile_prog ;
 scalar_t__ nv44_graph_class (struct nv40_graph_priv*) ;
 int nv44_graph_sclass ;
 TYPE_2__* nv_engine (struct nv40_graph_priv*) ;
 struct nouveau_object* nv_object (struct nv40_graph_priv*) ;
 TYPE_1__* nv_subdev (struct nv40_graph_priv*) ;

__attribute__((used)) static int
nv40_graph_ctor(struct nouveau_object *parent, struct nouveau_object *engine,
        struct nouveau_oclass *oclass, void *data, u32 size,
        struct nouveau_object **pobject)
{
 struct nv40_graph_priv *priv;
 int ret;

 ret = nouveau_graph_create(parent, engine, oclass, 1, &priv);
 *pobject = nv_object(priv);
 if (ret)
  return ret;

 nv_subdev(priv)->unit = 0x00001000;
 nv_subdev(priv)->intr = nv40_graph_intr;
 nv_engine(priv)->cclass = &nv40_graph_cclass;
 if (nv44_graph_class(priv))
  nv_engine(priv)->sclass = nv44_graph_sclass;
 else
  nv_engine(priv)->sclass = nv40_graph_sclass;
 nv_engine(priv)->tile_prog = nv40_graph_tile_prog;
 return 0;
}
