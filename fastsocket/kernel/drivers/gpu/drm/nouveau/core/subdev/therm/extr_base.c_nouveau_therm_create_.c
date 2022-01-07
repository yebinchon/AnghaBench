
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int attr_set; int attr_get; int fan_sense; int fan_set; int fan_get; } ;
struct TYPE_3__ {int alarm_program_lock; } ;
struct nouveau_therm_priv {int mode; int suspend; TYPE_2__ base; TYPE_1__ sensor; int lock; int alarm; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;


 int nouveau_alarm_init (int *,int ) ;
 int nouveau_subdev_create_ (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int ,char*,char*,int,void**) ;
 int nouveau_therm_alarm ;
 int nouveau_therm_attr_get ;
 int nouveau_therm_attr_set ;
 int nouveau_therm_fan_sense ;
 int nouveau_therm_fan_user_get ;
 int nouveau_therm_fan_user_set ;
 int spin_lock_init (int *) ;

int
nouveau_therm_create_(struct nouveau_object *parent,
        struct nouveau_object *engine,
        struct nouveau_oclass *oclass,
        int length, void **pobject)
{
 struct nouveau_therm_priv *priv;
 int ret;

 ret = nouveau_subdev_create_(parent, engine, oclass, 0, "PTHERM",
         "therm", length, pobject);
 priv = *pobject;
 if (ret)
  return ret;

 nouveau_alarm_init(&priv->alarm, nouveau_therm_alarm);
 spin_lock_init(&priv->lock);
 spin_lock_init(&priv->sensor.alarm_program_lock);

 priv->base.fan_get = nouveau_therm_fan_user_get;
 priv->base.fan_set = nouveau_therm_fan_user_set;
 priv->base.fan_sense = nouveau_therm_fan_sense;
 priv->base.attr_get = nouveau_therm_attr_get;
 priv->base.attr_set = nouveau_therm_attr_set;
 priv->mode = priv->suspend = -1;
 return 0;
}
