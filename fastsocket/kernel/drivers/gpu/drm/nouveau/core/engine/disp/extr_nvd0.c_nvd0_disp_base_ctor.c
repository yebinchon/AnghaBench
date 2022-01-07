
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {TYPE_1__* vblank; } ;
struct nv50_disp_priv {TYPE_2__ base; int sclass; } ;
struct nv50_disp_base {int ramht; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct TYPE_3__ {int disable; int enable; struct nv50_disp_priv* priv; } ;


 int nouveau_parent_create (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int ,int ,int ,struct nv50_disp_base**) ;
 int nouveau_ramht_new (struct nouveau_object*,struct nouveau_object*,int,int ,int *) ;
 struct nouveau_object* nv_object (struct nv50_disp_base*) ;
 int nvd0_disp_base_vblank_disable ;
 int nvd0_disp_base_vblank_enable ;

__attribute__((used)) static int
nvd0_disp_base_ctor(struct nouveau_object *parent,
      struct nouveau_object *engine,
      struct nouveau_oclass *oclass, void *data, u32 size,
      struct nouveau_object **pobject)
{
 struct nv50_disp_priv *priv = (void *)engine;
 struct nv50_disp_base *base;
 int ret;

 ret = nouveau_parent_create(parent, engine, oclass, 0,
        priv->sclass, 0, &base);
 *pobject = nv_object(base);
 if (ret)
  return ret;

 priv->base.vblank->priv = priv;
 priv->base.vblank->enable = nvd0_disp_base_vblank_enable;
 priv->base.vblank->disable = nvd0_disp_base_vblank_disable;

 return nouveau_ramht_new(parent, parent, 0x1000, 0, &base->ramht);
}
