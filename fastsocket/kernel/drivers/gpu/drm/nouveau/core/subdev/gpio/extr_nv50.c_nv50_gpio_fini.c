
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nv50_gpio_priv {int base; } ;
struct nouveau_object {int dummy; } ;
struct TYPE_2__ {int chipset; } ;


 int nouveau_gpio_fini (int *,int) ;
 TYPE_1__* nv_device (struct nv50_gpio_priv*) ;
 int nv_wr32 (struct nv50_gpio_priv*,int,int) ;

int
nv50_gpio_fini(struct nouveau_object *object, bool suspend)
{
 struct nv50_gpio_priv *priv = (void *)object;
 nv_wr32(priv, 0xe050, 0x00000000);
 if (nv_device(priv)->chipset >= 0x90)
  nv_wr32(priv, 0xe070, 0x00000000);
 return nouveau_gpio_fini(&priv->base, suspend);
}
