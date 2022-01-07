
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int base; } ;
struct nouveau_therm_priv {TYPE_1__ base; int fan; } ;
struct nouveau_object {int dummy; } ;


 int kfree (int ) ;
 int nouveau_subdev_destroy (int *) ;

void
_nouveau_therm_dtor(struct nouveau_object *object)
{
 struct nouveau_therm_priv *priv = (void *)object;
 kfree(priv->fan);
 nouveau_subdev_destroy(&priv->base.base);
}
