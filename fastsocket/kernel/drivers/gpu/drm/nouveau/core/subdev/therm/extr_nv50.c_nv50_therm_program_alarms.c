
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {int hysteresis; int temp; } ;
struct TYPE_9__ {int temp; int hysteresis; } ;
struct TYPE_8__ {int temp; int hysteresis; } ;
struct TYPE_7__ {int temp; int hysteresis; } ;
struct nvbios_therm_sensor {TYPE_5__ thrs_shutdown; TYPE_4__ thrs_critical; TYPE_3__ thrs_down_clock; TYPE_2__ thrs_fan_boost; } ;
struct TYPE_6__ {int alarm_program_lock; } ;
struct nouveau_therm_priv {TYPE_1__ sensor; struct nvbios_therm_sensor bios_sensor; } ;
struct nouveau_therm {int dummy; } ;


 int nv_info (struct nouveau_therm*,char*,int,int ,int,int ,int,int ,int,int) ;
 int nv_wr32 (struct nouveau_therm*,int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
nv50_therm_program_alarms(struct nouveau_therm *therm)
{
 struct nouveau_therm_priv *priv = (void *)therm;
 struct nvbios_therm_sensor *sensor = &priv->bios_sensor;
 unsigned long flags;

 spin_lock_irqsave(&priv->sensor.alarm_program_lock, flags);


 nv_wr32(therm, 0x20000, 0x000003ff);


 nv_wr32(therm, 0x20484, sensor->thrs_shutdown.hysteresis);
 nv_wr32(therm, 0x20480, sensor->thrs_shutdown.temp);


 nv_wr32(therm, 0x204c4, sensor->thrs_fan_boost.temp);


 nv_wr32(therm, 0x204c0, sensor->thrs_critical.temp);


 nv_wr32(therm, 0x20414, sensor->thrs_down_clock.temp);
 spin_unlock_irqrestore(&priv->sensor.alarm_program_lock, flags);

 nv_info(therm,
  "Programmed thresholds [ %d(%d), %d(%d), %d(%d), %d(%d) ]\n",
  sensor->thrs_fan_boost.temp, sensor->thrs_fan_boost.hysteresis,
  sensor->thrs_down_clock.temp,
  sensor->thrs_down_clock.hysteresis,
  sensor->thrs_critical.temp, sensor->thrs_critical.hysteresis,
  sensor->thrs_shutdown.temp, sensor->thrs_shutdown.hysteresis);

}
