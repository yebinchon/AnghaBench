
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int therm_poll_alarm; } ;
struct nouveau_therm_priv {int bios_sensor; TYPE_1__ sensor; } ;
struct nouveau_therm {int dummy; } ;
struct nouveau_bios {int dummy; } ;


 int NVBIOS_THERM_DOMAIN_CORE ;
 int alarm_timer_callback ;
 int nouveau_alarm_init (int *,int ) ;
 struct nouveau_bios* nouveau_bios (struct nouveau_therm*) ;
 int nouveau_therm_temp_safety_checks (struct nouveau_therm*) ;
 int nouveau_therm_temp_set_defaults (struct nouveau_therm*) ;
 int nv_error (struct nouveau_therm*,char*) ;
 scalar_t__ nvbios_therm_sensor_parse (struct nouveau_bios*,int ,int *) ;

int
nouveau_therm_sensor_ctor(struct nouveau_therm *therm)
{
 struct nouveau_therm_priv *priv = (void *)therm;
 struct nouveau_bios *bios = nouveau_bios(therm);

 nouveau_alarm_init(&priv->sensor.therm_poll_alarm, alarm_timer_callback);

 nouveau_therm_temp_set_defaults(therm);
 if (nvbios_therm_sensor_parse(bios, NVBIOS_THERM_DOMAIN_CORE,
          &priv->bios_sensor))
  nv_error(therm, "nvbios_therm_sensor_parse failed\n");
 nouveau_therm_temp_safety_checks(therm);

 return 0;
}
