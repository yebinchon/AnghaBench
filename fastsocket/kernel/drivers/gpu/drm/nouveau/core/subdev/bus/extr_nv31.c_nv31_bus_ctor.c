
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nv31_bus_priv {int dummy; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct TYPE_2__ {int intr; } ;


 int nouveau_bus_create (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,struct nv31_bus_priv**) ;
 int nv31_bus_intr ;
 struct nouveau_object* nv_object (struct nv31_bus_priv*) ;
 TYPE_1__* nv_subdev (struct nv31_bus_priv*) ;

__attribute__((used)) static int
nv31_bus_ctor(struct nouveau_object *parent, struct nouveau_object *engine,
       struct nouveau_oclass *oclass, void *data, u32 size,
       struct nouveau_object **pobject)
{
 struct nv31_bus_priv *priv;
 int ret;

 ret = nouveau_bus_create(parent, engine, oclass, &priv);
 *pobject = nv_object(priv);
 if (ret)
  return ret;

 nv_subdev(priv)->intr = nv31_bus_intr;
 return 0;
}
