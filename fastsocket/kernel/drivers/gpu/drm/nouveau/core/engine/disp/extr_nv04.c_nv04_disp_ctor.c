
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {TYPE_1__* vblank; } ;
struct nv04_disp_priv {TYPE_2__ base; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct TYPE_8__ {int sclass; } ;
struct TYPE_7__ {int intr; } ;
struct TYPE_5__ {int disable; int enable; struct nv04_disp_priv* priv; } ;


 int nouveau_disp_create (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int,char*,char*,struct nv04_disp_priv**) ;
 int nv04_disp_intr ;
 int nv04_disp_sclass ;
 int nv04_disp_vblank_disable ;
 int nv04_disp_vblank_enable ;
 TYPE_4__* nv_engine (struct nv04_disp_priv*) ;
 struct nouveau_object* nv_object (struct nv04_disp_priv*) ;
 TYPE_3__* nv_subdev (struct nv04_disp_priv*) ;

__attribute__((used)) static int
nv04_disp_ctor(struct nouveau_object *parent, struct nouveau_object *engine,
        struct nouveau_oclass *oclass, void *data, u32 size,
        struct nouveau_object **pobject)
{
 struct nv04_disp_priv *priv;
 int ret;

 ret = nouveau_disp_create(parent, engine, oclass, 2, "DISPLAY",
      "display", &priv);
 *pobject = nv_object(priv);
 if (ret)
  return ret;

 nv_engine(priv)->sclass = nv04_disp_sclass;
 nv_subdev(priv)->intr = nv04_disp_intr;
 priv->base.vblank->priv = priv;
 priv->base.vblank->enable = nv04_disp_vblank_enable;
 priv->base.vblank->disable = nv04_disp_vblank_disable;
 return 0;
}
