
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv10_gpio_priv {int base; } ;
struct nouveau_object {int dummy; } ;


 int nouveau_gpio_fini (int *,int) ;
 int nv_wr32 (struct nv10_gpio_priv*,int,int) ;

__attribute__((used)) static int
nv10_gpio_fini(struct nouveau_object *object, bool suspend)
{
 struct nv10_gpio_priv *priv = (void *)object;
 nv_wr32(priv, 0x001144, 0x00000000);
 return nouveau_gpio_fini(&priv->base, suspend);
}
