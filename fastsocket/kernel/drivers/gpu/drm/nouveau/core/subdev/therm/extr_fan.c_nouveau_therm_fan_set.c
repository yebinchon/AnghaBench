
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_therm_priv {int fan; } ;
struct nouveau_therm {int dummy; } ;


 int nouveau_fan_update (int ,int,int) ;

int
nouveau_therm_fan_set(struct nouveau_therm *therm, bool immediate, int percent)
{
 struct nouveau_therm_priv *priv = (void *)therm;
 return nouveau_fan_update(priv->fan, immediate, percent);
}
