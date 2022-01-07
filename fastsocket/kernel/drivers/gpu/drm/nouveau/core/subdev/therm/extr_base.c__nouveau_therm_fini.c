
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_therm_priv {int mode; int suspend; } ;
struct nouveau_therm {int base; } ;
struct nouveau_object {int dummy; } ;


 int NOUVEAU_THERM_CTRL_NONE ;
 int nouveau_subdev_fini (int *,int) ;

int
_nouveau_therm_fini(struct nouveau_object *object, bool suspend)
{
 struct nouveau_therm *therm = (void *)object;
 struct nouveau_therm_priv *priv = (void *)therm;

 if (suspend) {
  priv->suspend = priv->mode;
  priv->mode = NOUVEAU_THERM_CTRL_NONE;
 }

 return nouveau_subdev_fini(&therm->base, suspend);
}
