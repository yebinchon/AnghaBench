
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_therm {int dummy; } ;


 int nouveau_therm_fan_get (struct nouveau_therm*) ;

int
nouveau_therm_fan_user_get(struct nouveau_therm *therm)
{
 return nouveau_therm_fan_get(therm);
}
