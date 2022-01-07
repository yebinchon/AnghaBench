
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {int temp_get; int pwm_set; int pwm_get; int pwm_ctrl; } ;
struct TYPE_5__ {int program_alarms; } ;
struct TYPE_6__ {TYPE_4__ base; TYPE_1__ sensor; } ;
struct nv40_therm_priv {TYPE_2__ base; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct TYPE_7__ {int intr; } ;


 int nouveau_therm_create (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,struct nv40_therm_priv**) ;
 int nouveau_therm_preinit (TYPE_4__*) ;
 int nouveau_therm_program_alarms_polling ;
 int nv40_fan_pwm_ctrl ;
 int nv40_fan_pwm_get ;
 int nv40_fan_pwm_set ;
 int nv40_temp_get ;
 int nv40_therm_intr ;
 struct nouveau_object* nv_object (struct nv40_therm_priv*) ;
 TYPE_3__* nv_subdev (struct nv40_therm_priv*) ;

__attribute__((used)) static int
nv40_therm_ctor(struct nouveau_object *parent,
  struct nouveau_object *engine,
  struct nouveau_oclass *oclass, void *data, u32 size,
  struct nouveau_object **pobject)
{
 struct nv40_therm_priv *priv;
 int ret;

 ret = nouveau_therm_create(parent, engine, oclass, &priv);
 *pobject = nv_object(priv);
 if (ret)
  return ret;

 priv->base.base.pwm_ctrl = nv40_fan_pwm_ctrl;
 priv->base.base.pwm_get = nv40_fan_pwm_get;
 priv->base.base.pwm_set = nv40_fan_pwm_set;
 priv->base.base.temp_get = nv40_temp_get;
 priv->base.sensor.program_alarms = nouveau_therm_program_alarms_polling;
 nv_subdev(priv)->intr = nv40_therm_intr;
 return nouveau_therm_preinit(&priv->base.base);
}
