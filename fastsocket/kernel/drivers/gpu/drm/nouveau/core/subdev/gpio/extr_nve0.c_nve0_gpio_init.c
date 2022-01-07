
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nve0_gpio_priv {int base; } ;
struct nouveau_object {int dummy; } ;


 int nouveau_gpio_init (int *) ;
 int nv_wr32 (struct nve0_gpio_priv*,int,int) ;

int
nve0_gpio_init(struct nouveau_object *object)
{
 struct nve0_gpio_priv *priv = (void *)object;
 int ret;

 ret = nouveau_gpio_init(&priv->base);
 if (ret)
  return ret;

 nv_wr32(priv, 0xdc00, 0xffffffff);
 nv_wr32(priv, 0xdc80, 0xffffffff);
 return 0;
}
