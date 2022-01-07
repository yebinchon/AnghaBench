
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nve0_ibus_priv {int dummy; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct TYPE_2__ {int intr; } ;


 int nouveau_ibus_create (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,struct nve0_ibus_priv**) ;
 struct nouveau_object* nv_object (struct nve0_ibus_priv*) ;
 TYPE_1__* nv_subdev (struct nve0_ibus_priv*) ;
 int nve0_ibus_intr ;

__attribute__((used)) static int
nve0_ibus_ctor(struct nouveau_object *parent, struct nouveau_object *engine,
        struct nouveau_oclass *oclass, void *data, u32 size,
        struct nouveau_object **pobject)
{
 struct nve0_ibus_priv *priv;
 int ret;

 ret = nouveau_ibus_create(parent, engine, oclass, &priv);
 *pobject = nv_object(priv);
 if (ret)
  return ret;

 nv_subdev(priv)->intr = nve0_ibus_intr;
 return 0;
}
