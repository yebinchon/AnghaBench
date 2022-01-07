
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_therm {scalar_t__ (* temp_get ) (struct nouveau_therm*) ;} ;


 int nv_info (struct nouveau_therm*,char*,char const*) ;
 scalar_t__ stub1 (struct nouveau_therm*) ;

void
nouveau_therm_sensor_preinit(struct nouveau_therm *therm)
{
 const char *sensor_avail = "yes";

 if (therm->temp_get(therm) < 0)
  sensor_avail = "no";

 nv_info(therm, "internal sensor: %s\n", sensor_avail);
}
