
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nvc0_ltcg_priv {int subp_nr; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct TYPE_2__ {int intr; } ;


 int nouveau_ltcg_create (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,struct nvc0_ltcg_priv**) ;
 int nv_mask (struct nvc0_ltcg_priv*,int,int,int) ;
 struct nouveau_object* nv_object (struct nvc0_ltcg_priv*) ;
 int nv_rd32 (struct nvc0_ltcg_priv*,int) ;
 TYPE_1__* nv_subdev (struct nvc0_ltcg_priv*) ;
 int nvc0_ltcg_intr ;

__attribute__((used)) static int
nvc0_ltcg_ctor(struct nouveau_object *parent, struct nouveau_object *engine,
        struct nouveau_oclass *oclass, void *data, u32 size,
        struct nouveau_object **pobject)
{
 struct nvc0_ltcg_priv *priv;
 int ret;

 ret = nouveau_ltcg_create(parent, engine, oclass, &priv);
 *pobject = nv_object(priv);
 if (ret)
  return ret;

 priv->subp_nr = nv_rd32(priv, 0x17e8dc) >> 24;
 nv_mask(priv, 0x17e820, 0x00100000, 0x00000000);

 nv_subdev(priv)->intr = nvc0_ltcg_intr;
 return 0;
}
