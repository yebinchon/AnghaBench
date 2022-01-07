
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int bind; } ;
struct nvc0_dmaeng_priv {TYPE_1__ base; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct TYPE_4__ {int sclass; } ;


 int nouveau_dmaeng_create (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,struct nvc0_dmaeng_priv**) ;
 int nouveau_dmaobj_sclass ;
 TYPE_2__* nv_engine (struct nvc0_dmaeng_priv*) ;
 struct nouveau_object* nv_object (struct nvc0_dmaeng_priv*) ;
 int nvc0_dmaobj_bind ;

__attribute__((used)) static int
nvc0_dmaeng_ctor(struct nouveau_object *parent, struct nouveau_object *engine,
   struct nouveau_oclass *oclass, void *data, u32 size,
   struct nouveau_object **pobject)
{
 struct nvc0_dmaeng_priv *priv;
 int ret;

 ret = nouveau_dmaeng_create(parent, engine, oclass, &priv);
 *pobject = nv_object(priv);
 if (ret)
  return ret;

 nv_engine(priv)->sclass = nouveau_dmaobj_sclass;
 priv->base.bind = nvc0_dmaobj_bind;
 return 0;
}
