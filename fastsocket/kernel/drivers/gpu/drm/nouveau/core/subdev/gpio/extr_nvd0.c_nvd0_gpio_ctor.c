
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {TYPE_1__* events; int sense; int drive; int reset; } ;
struct nvd0_gpio_priv {TYPE_2__ base; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct TYPE_6__ {int intr; } ;
struct TYPE_4__ {int disable; int enable; struct nvd0_gpio_priv* priv; } ;


 int nouveau_gpio_create (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int,struct nvd0_gpio_priv**) ;
 int nv50_gpio_intr ;
 int nv50_gpio_intr_disable ;
 int nv50_gpio_intr_enable ;
 struct nouveau_object* nv_object (struct nvd0_gpio_priv*) ;
 TYPE_3__* nv_subdev (struct nvd0_gpio_priv*) ;
 int nvd0_gpio_drive ;
 int nvd0_gpio_reset ;
 int nvd0_gpio_sense ;

__attribute__((used)) static int
nvd0_gpio_ctor(struct nouveau_object *parent, struct nouveau_object *engine,
        struct nouveau_oclass *oclass, void *data, u32 size,
        struct nouveau_object **pobject)
{
 struct nvd0_gpio_priv *priv;
 int ret;

 ret = nouveau_gpio_create(parent, engine, oclass, 32, &priv);
 *pobject = nv_object(priv);
 if (ret)
  return ret;

 priv->base.reset = nvd0_gpio_reset;
 priv->base.drive = nvd0_gpio_drive;
 priv->base.sense = nvd0_gpio_sense;
 priv->base.events->priv = priv;
 priv->base.events->enable = nv50_gpio_intr_enable;
 priv->base.events->disable = nv50_gpio_intr_disable;
 nv_subdev(priv)->intr = nv50_gpio_intr;
 return 0;
}
