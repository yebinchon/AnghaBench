
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_therm {int dummy; } ;


 int NOUVEAU_THERM_CTRL_NONE ;
 int nouveau_therm_fan_ctor (struct nouveau_therm*) ;
 int nouveau_therm_fan_mode (struct nouveau_therm*,int ) ;
 int nouveau_therm_ic_ctor (struct nouveau_therm*) ;
 int nouveau_therm_sensor_ctor (struct nouveau_therm*) ;
 int nouveau_therm_sensor_preinit (struct nouveau_therm*) ;

int
nouveau_therm_preinit(struct nouveau_therm *therm)
{
 nouveau_therm_sensor_ctor(therm);
 nouveau_therm_ic_ctor(therm);
 nouveau_therm_fan_ctor(therm);

 nouveau_therm_fan_mode(therm, NOUVEAU_THERM_CTRL_NONE);
 nouveau_therm_sensor_preinit(therm);
 return 0;
}
