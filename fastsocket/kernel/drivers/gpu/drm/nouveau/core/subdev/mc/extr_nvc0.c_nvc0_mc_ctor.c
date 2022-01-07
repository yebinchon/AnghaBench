
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int intr_map; } ;
struct nvc0_mc_priv {TYPE_1__ base; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct TYPE_4__ {int intr; } ;


 int nouveau_mc_create (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,struct nvc0_mc_priv**) ;
 int nouveau_mc_intr ;
 struct nouveau_object* nv_object (struct nvc0_mc_priv*) ;
 TYPE_2__* nv_subdev (struct nvc0_mc_priv*) ;
 int nvc0_mc_intr ;

__attribute__((used)) static int
nvc0_mc_ctor(struct nouveau_object *parent, struct nouveau_object *engine,
      struct nouveau_oclass *oclass, void *data, u32 size,
      struct nouveau_object **pobject)
{
 struct nvc0_mc_priv *priv;
 int ret;

 ret = nouveau_mc_create(parent, engine, oclass, &priv);
 *pobject = nv_object(priv);
 if (ret)
  return ret;

 nv_subdev(priv)->intr = nouveau_mc_intr;
 priv->base.intr_map = nvc0_mc_intr;
 return 0;
}
