#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {char* name; int /*<<< orphan*/  type; int /*<<< orphan*/ * ops; } ;
struct smu_fan_control {int fan_type; TYPE_1__ ctrl; int /*<<< orphan*/  reg; int /*<<< orphan*/  max; int /*<<< orphan*/  min; } ;
struct device_node {int dummy; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  WF_CONTROL_PWM_FAN ; 
 int /*<<< orphan*/  WF_CONTROL_RPM_FAN ; 
 int /*<<< orphan*/  FUNC0 (struct smu_fan_control*) ; 
 struct smu_fan_control* FUNC1 (int,int /*<<< orphan*/ ) ; 
 void* FUNC2 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  smu_fan_ops ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static struct smu_fan_control *FUNC5(struct device_node *node,
					      int pwm_fan)
{
	struct smu_fan_control *fct;
	const s32 *v;
	const u32 *reg;
	const char *l;

	fct = FUNC1(sizeof(struct smu_fan_control), GFP_KERNEL);
	if (fct == NULL)
		return NULL;
	fct->ctrl.ops = &smu_fan_ops;
	l = FUNC2(node, "location", NULL);
	if (l == NULL)
		goto fail;

	fct->fan_type = pwm_fan;
	fct->ctrl.type = pwm_fan ? WF_CONTROL_PWM_FAN : WF_CONTROL_RPM_FAN;

	/* We use the name & location here the same way we do for SMU sensors,
	 * see the comment in windfarm_smu_sensors.c. The locations are a bit
	 * less consistent here between the iMac and the desktop models, but
	 * that is good enough for our needs for now at least.
	 *
	 * One problem though is that Apple seem to be inconsistent with case
	 * and the kernel doesn't have strcasecmp =P
	 */

	fct->ctrl.name = NULL;

	/* Names used on desktop models */
	if (!FUNC3(l, "Rear Fan 0") || !FUNC3(l, "Rear Fan") ||
	    !FUNC3(l, "Rear fan 0") || !FUNC3(l, "Rear fan") ||
	    !FUNC3(l, "CPU A EXHAUST"))
		fct->ctrl.name = "cpu-rear-fan-0";
	else if (!FUNC3(l, "Rear Fan 1") || !FUNC3(l, "Rear fan 1") ||
		 !FUNC3(l, "CPU B EXHAUST"))
		fct->ctrl.name = "cpu-rear-fan-1";
	else if (!FUNC3(l, "Front Fan 0") || !FUNC3(l, "Front Fan") ||
		 !FUNC3(l, "Front fan 0") || !FUNC3(l, "Front fan") ||
		 !FUNC3(l, "CPU A INTAKE"))
		fct->ctrl.name = "cpu-front-fan-0";
	else if (!FUNC3(l, "Front Fan 1") || !FUNC3(l, "Front fan 1") ||
		 !FUNC3(l, "CPU B INTAKE"))
		fct->ctrl.name = "cpu-front-fan-1";
	else if (!FUNC3(l, "CPU A PUMP"))
		fct->ctrl.name = "cpu-pump-0";
	else if (!FUNC3(l, "CPU B PUMP"))
		fct->ctrl.name = "cpu-pump-1";
	else if (!FUNC3(l, "Slots Fan") || !FUNC3(l, "Slots fan") ||
		 !FUNC3(l, "EXPANSION SLOTS INTAKE"))
		fct->ctrl.name = "slots-fan";
	else if (!FUNC3(l, "Drive Bay") || !FUNC3(l, "Drive bay") ||
		 !FUNC3(l, "DRIVE BAY A INTAKE"))
		fct->ctrl.name = "drive-bay-fan";
	else if (!FUNC3(l, "BACKSIDE"))
		fct->ctrl.name = "backside-fan";

	/* Names used on iMac models */
	if (!FUNC3(l, "System Fan") || !FUNC3(l, "System fan"))
		fct->ctrl.name = "system-fan";
	else if (!FUNC3(l, "CPU Fan") || !FUNC3(l, "CPU fan"))
		fct->ctrl.name = "cpu-fan";
	else if (!FUNC3(l, "Hard Drive") || !FUNC3(l, "Hard drive"))
		fct->ctrl.name = "drive-bay-fan";
	else if (!FUNC3(l, "HDD Fan")) /* seen on iMac G5 iSight */
		fct->ctrl.name = "hard-drive-fan";
	else if (!FUNC3(l, "ODD Fan")) /* same */
		fct->ctrl.name = "optical-drive-fan";

	/* Unrecognized fan, bail out */
	if (fct->ctrl.name == NULL)
		goto fail;

	/* Get min & max values*/
	v = FUNC2(node, "min-value", NULL);
	if (v == NULL)
		goto fail;
	fct->min = *v;
	v = FUNC2(node, "max-value", NULL);
	if (v == NULL)
		goto fail;
	fct->max = *v;

	/* Get "reg" value */
	reg = FUNC2(node, "reg", NULL);
	if (reg == NULL)
		goto fail;
	fct->reg = *reg;

	if (FUNC4(&fct->ctrl))
		goto fail;

	return fct;
 fail:
	FUNC0(fct);
	return NULL;
}