#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_6__ {int /*<<< orphan*/  fan_sense; int /*<<< orphan*/  temp_get; int /*<<< orphan*/  pwm_clock; int /*<<< orphan*/  pwm_set; int /*<<< orphan*/  pwm_get; int /*<<< orphan*/  pwm_ctrl; } ;
struct TYPE_4__ {int /*<<< orphan*/  program_alarms; } ;
struct TYPE_5__ {TYPE_3__ base; TYPE_1__ sensor; } ;
struct nva3_therm_priv {TYPE_2__ base; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,struct nva3_therm_priv**) ; 
 int FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  nouveau_therm_program_alarms_polling ; 
 int /*<<< orphan*/  nv50_fan_pwm_clock ; 
 int /*<<< orphan*/  nv50_fan_pwm_ctrl ; 
 int /*<<< orphan*/  nv50_fan_pwm_get ; 
 int /*<<< orphan*/  nv50_fan_pwm_set ; 
 int /*<<< orphan*/  nv50_temp_get ; 
 struct nouveau_object* FUNC2 (struct nva3_therm_priv*) ; 
 int /*<<< orphan*/  nva3_therm_fan_sense ; 

__attribute__((used)) static int
FUNC3(struct nouveau_object *parent,
		struct nouveau_object *engine,
		struct nouveau_oclass *oclass, void *data, u32 size,
		struct nouveau_object **pobject)
{
	struct nva3_therm_priv *priv;
	int ret;

	ret = FUNC0(parent, engine, oclass, &priv);
	*pobject = FUNC2(priv);
	if (ret)
		return ret;

	priv->base.base.pwm_ctrl = nv50_fan_pwm_ctrl;
	priv->base.base.pwm_get = nv50_fan_pwm_get;
	priv->base.base.pwm_set = nv50_fan_pwm_set;
	priv->base.base.pwm_clock = nv50_fan_pwm_clock;
	priv->base.base.temp_get = nv50_temp_get;
	priv->base.base.fan_sense = nva3_therm_fan_sense;
	priv->base.sensor.program_alarms = nouveau_therm_program_alarms_polling;
	return FUNC1(&priv->base.base);
}