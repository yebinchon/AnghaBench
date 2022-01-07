
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_therm_priv {scalar_t__ mode; } ;
struct nouveau_therm {int dummy; } ;


 int EINVAL ;
 scalar_t__ NOUVEAU_THERM_CTRL_MANUAL ;
 int nouveau_therm_fan_set (struct nouveau_therm*,int,int) ;

int
nouveau_therm_fan_user_set(struct nouveau_therm *therm, int percent)
{
 struct nouveau_therm_priv *priv = (void *)therm;

 if (priv->mode != NOUVEAU_THERM_CTRL_MANUAL)
  return -EINVAL;

 return nouveau_therm_fan_set(therm, 1, percent);
}
