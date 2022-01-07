
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int hysteresis; int temp; } ;
struct TYPE_7__ {int hysteresis; int temp; } ;
struct TYPE_6__ {int hysteresis; int temp; } ;
struct TYPE_10__ {int hysteresis; int temp; } ;
struct nvbios_therm_sensor {TYPE_3__ thrs_shutdown; TYPE_2__ thrs_critical; TYPE_1__ thrs_down_clock; TYPE_5__ thrs_fan_boost; } ;
struct TYPE_9__ {int therm_poll_alarm; } ;
struct nouveau_therm_priv {TYPE_4__ sensor; struct nvbios_therm_sensor bios_sensor; } ;
struct nouveau_therm {int dummy; } ;


 int alarm_timer_callback (int *) ;
 int nv_info (struct nouveau_therm*,char*,int ,int ,int ,int ,int ,int ,int ,int ) ;

void
nouveau_therm_program_alarms_polling(struct nouveau_therm *therm)
{
 struct nouveau_therm_priv *priv = (void *)therm;
 struct nvbios_therm_sensor *sensor = &priv->bios_sensor;

 nv_info(therm,
  "programmed thresholds [ %d(%d), %d(%d), %d(%d), %d(%d) ]\n",
  sensor->thrs_fan_boost.temp, sensor->thrs_fan_boost.hysteresis,
  sensor->thrs_down_clock.temp,
  sensor->thrs_down_clock.hysteresis,
  sensor->thrs_critical.temp, sensor->thrs_critical.hysteresis,
  sensor->thrs_shutdown.temp, sensor->thrs_shutdown.hysteresis);

 alarm_timer_callback(&priv->sensor.therm_poll_alarm);
}
