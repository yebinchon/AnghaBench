
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_9__ {int temp_get; int pwm_clock; int pwm_set; int pwm_get; int pwm_ctrl; } ;
struct TYPE_6__ {int program_alarms; } ;
struct TYPE_7__ {TYPE_4__ base; TYPE_1__ sensor; } ;
struct nv50_therm_priv {TYPE_2__ base; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct TYPE_8__ {int intr; } ;


 int NOUVEAU_THERM_THRS_CRITICAL ;
 int NOUVEAU_THERM_THRS_DOWNCLOCK ;
 int NOUVEAU_THERM_THRS_FANBOOST ;
 int NOUVEAU_THERM_THRS_LOWER ;
 int NOUVEAU_THERM_THRS_SHUTDOWN ;
 int nouveau_therm_create (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,struct nv50_therm_priv**) ;
 int nouveau_therm_preinit (TYPE_4__*) ;
 int nouveau_therm_sensor_set_threshold_state (TYPE_4__*,int ,int ) ;
 int nv50_fan_pwm_clock ;
 int nv50_fan_pwm_ctrl ;
 int nv50_fan_pwm_get ;
 int nv50_fan_pwm_set ;
 int nv50_temp_get ;
 int nv50_therm_intr ;
 int nv50_therm_program_alarms ;
 struct nouveau_object* nv_object (struct nv50_therm_priv*) ;
 TYPE_3__* nv_subdev (struct nv50_therm_priv*) ;

__attribute__((used)) static int
nv50_therm_ctor(struct nouveau_object *parent,
  struct nouveau_object *engine,
  struct nouveau_oclass *oclass, void *data, u32 size,
  struct nouveau_object **pobject)
{
 struct nv50_therm_priv *priv;
 int ret;

 ret = nouveau_therm_create(parent, engine, oclass, &priv);
 *pobject = nv_object(priv);
 if (ret)
  return ret;

 priv->base.base.pwm_ctrl = nv50_fan_pwm_ctrl;
 priv->base.base.pwm_get = nv50_fan_pwm_get;
 priv->base.base.pwm_set = nv50_fan_pwm_set;
 priv->base.base.pwm_clock = nv50_fan_pwm_clock;
 priv->base.base.temp_get = nv50_temp_get;
 priv->base.sensor.program_alarms = nv50_therm_program_alarms;
 nv_subdev(priv)->intr = nv50_therm_intr;


 nouveau_therm_sensor_set_threshold_state(&priv->base.base,
       NOUVEAU_THERM_THRS_SHUTDOWN,
       NOUVEAU_THERM_THRS_LOWER);
 nouveau_therm_sensor_set_threshold_state(&priv->base.base,
       NOUVEAU_THERM_THRS_FANBOOST,
       NOUVEAU_THERM_THRS_LOWER);
 nouveau_therm_sensor_set_threshold_state(&priv->base.base,
       NOUVEAU_THERM_THRS_CRITICAL,
       NOUVEAU_THERM_THRS_LOWER);
 nouveau_therm_sensor_set_threshold_state(&priv->base.base,
       NOUVEAU_THERM_THRS_DOWNCLOCK,
       NOUVEAU_THERM_THRS_LOWER);

 return nouveau_therm_preinit(&priv->base.base);
}
