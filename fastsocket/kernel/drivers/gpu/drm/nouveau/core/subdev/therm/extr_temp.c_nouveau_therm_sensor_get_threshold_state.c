
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* alarm_state; } ;
struct nouveau_therm_priv {TYPE_1__ sensor; } ;
struct nouveau_therm {int dummy; } ;
typedef enum nouveau_therm_thrs_state { ____Placeholder_nouveau_therm_thrs_state } nouveau_therm_thrs_state ;
typedef enum nouveau_therm_thrs { ____Placeholder_nouveau_therm_thrs } nouveau_therm_thrs ;



enum nouveau_therm_thrs_state
nouveau_therm_sensor_get_threshold_state(struct nouveau_therm *therm,
      enum nouveau_therm_thrs thrs)
{
 struct nouveau_therm_priv *priv = (void *)therm;
 return priv->sensor.alarm_state[thrs];
}
