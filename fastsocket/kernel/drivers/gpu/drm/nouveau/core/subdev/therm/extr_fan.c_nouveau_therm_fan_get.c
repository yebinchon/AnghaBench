
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nouveau_therm_priv {TYPE_1__* fan; } ;
struct nouveau_therm {int dummy; } ;
struct TYPE_2__ {int (* get ) (struct nouveau_therm*) ;} ;


 int stub1 (struct nouveau_therm*) ;

int
nouveau_therm_fan_get(struct nouveau_therm *therm)
{
 struct nouveau_therm_priv *priv = (void *)therm;
 return priv->fan->get(therm);
}
