
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nvc0_bus_priv {int dummy; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct TYPE_2__ {int intr; } ;


 int nouveau_bus_create (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,struct nvc0_bus_priv**) ;
 struct nouveau_object* nv_object (struct nvc0_bus_priv*) ;
 TYPE_1__* nv_subdev (struct nvc0_bus_priv*) ;
 int nvc0_bus_intr ;

__attribute__((used)) static int
nvc0_bus_ctor(struct nouveau_object *parent, struct nouveau_object *engine,
       struct nouveau_oclass *oclass, void *data, u32 size,
       struct nouveau_object **pobject)
{
 struct nvc0_bus_priv *priv;
 int ret;

 ret = nouveau_bus_create(parent, engine, oclass, &priv);
 *pobject = nv_object(priv);
 if (ret)
  return ret;

 nv_subdev(priv)->intr = nvc0_bus_intr;
 return 0;
}
