
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct nvc0_software_priv {int dummy; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct TYPE_4__ {int sclass; int * cclass; } ;
struct TYPE_3__ {int intr; } ;


 int nouveau_software_create (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,struct nvc0_software_priv**) ;
 int nv04_software_intr ;
 TYPE_2__* nv_engine (struct nvc0_software_priv*) ;
 struct nouveau_object* nv_object (struct nvc0_software_priv*) ;
 TYPE_1__* nv_subdev (struct nvc0_software_priv*) ;
 int nvc0_software_cclass ;
 int nvc0_software_sclass ;

__attribute__((used)) static int
nvc0_software_ctor(struct nouveau_object *parent, struct nouveau_object *engine,
     struct nouveau_oclass *oclass, void *data, u32 size,
     struct nouveau_object **pobject)
{
 struct nvc0_software_priv *priv;
 int ret;

 ret = nouveau_software_create(parent, engine, oclass, &priv);
 *pobject = nv_object(priv);
 if (ret)
  return ret;

 nv_engine(priv)->cclass = &nvc0_software_cclass;
 nv_engine(priv)->sclass = nvc0_software_sclass;
 nv_subdev(priv)->intr = nv04_software_intr;
 return 0;
}
