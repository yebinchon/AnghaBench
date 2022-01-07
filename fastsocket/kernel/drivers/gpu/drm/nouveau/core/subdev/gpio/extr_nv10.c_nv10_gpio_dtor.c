
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv10_gpio_priv {int base; } ;
struct nouveau_object {int dummy; } ;


 int nouveau_gpio_destroy (int *) ;

__attribute__((used)) static void
nv10_gpio_dtor(struct nouveau_object *object)
{
 struct nv10_gpio_priv *priv = (void *)object;
 nouveau_gpio_destroy(&priv->base);
}
