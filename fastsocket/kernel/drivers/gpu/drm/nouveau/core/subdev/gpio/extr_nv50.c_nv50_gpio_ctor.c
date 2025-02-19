
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {TYPE_1__* events; int sense; int drive; int reset; } ;
struct nv50_gpio_priv {TYPE_2__ base; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct TYPE_8__ {int chipset; } ;
struct TYPE_7__ {int intr; } ;
struct TYPE_5__ {int disable; int enable; struct nv50_gpio_priv* priv; } ;


 int nouveau_gpio_create (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int,struct nv50_gpio_priv**) ;
 int nv50_gpio_drive ;
 int nv50_gpio_intr ;
 int nv50_gpio_intr_disable ;
 int nv50_gpio_intr_enable ;
 int nv50_gpio_reset ;
 int nv50_gpio_sense ;
 TYPE_4__* nv_device (struct nouveau_object*) ;
 struct nouveau_object* nv_object (struct nv50_gpio_priv*) ;
 TYPE_3__* nv_subdev (struct nv50_gpio_priv*) ;

__attribute__((used)) static int
nv50_gpio_ctor(struct nouveau_object *parent, struct nouveau_object *engine,
        struct nouveau_oclass *oclass, void *data, u32 size,
        struct nouveau_object **pobject)
{
 struct nv50_gpio_priv *priv;
 int ret;

 ret = nouveau_gpio_create(parent, engine, oclass,
      nv_device(parent)->chipset >= 0x90 ? 32 : 16,
      &priv);
 *pobject = nv_object(priv);
 if (ret)
  return ret;

 priv->base.reset = nv50_gpio_reset;
 priv->base.drive = nv50_gpio_drive;
 priv->base.sense = nv50_gpio_sense;
 priv->base.events->priv = priv;
 priv->base.events->enable = nv50_gpio_intr_enable;
 priv->base.events->disable = nv50_gpio_intr_disable;
 nv_subdev(priv)->intr = nv50_gpio_intr;
 return 0;
}
