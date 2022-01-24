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
typedef  int uint32_t ;
struct nvbios_therm_sensor {int /*<<< orphan*/  thrs_critical; int /*<<< orphan*/  thrs_fan_boost; int /*<<< orphan*/  thrs_shutdown; int /*<<< orphan*/  thrs_down_clock; } ;
struct TYPE_2__ {int /*<<< orphan*/  alarm_program_lock; } ;
struct nouveau_therm_priv {TYPE_1__ sensor; struct nvbios_therm_sensor bios_sensor; } ;
struct nouveau_therm {int dummy; } ;
struct nouveau_subdev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NOUVEAU_THERM_THRS_CRITICAL ; 
 int /*<<< orphan*/  NOUVEAU_THERM_THRS_DOWNCLOCK ; 
 int /*<<< orphan*/  NOUVEAU_THERM_THRS_FANBOOST ; 
 int /*<<< orphan*/  NOUVEAU_THERM_THRS_SHUTDOWN ; 
 struct nouveau_therm* FUNC0 (struct nouveau_subdev*) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_therm*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_therm*,char*,int) ; 
 int FUNC3 (struct nouveau_therm*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nouveau_therm*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC7(struct nouveau_subdev *subdev)
{
	struct nouveau_therm *therm = FUNC0(subdev);
	struct nouveau_therm_priv *priv = (void *)therm;
	struct nvbios_therm_sensor *sensor = &priv->bios_sensor;
	unsigned long flags;
	uint32_t intr;

	FUNC5(&priv->sensor.alarm_program_lock, flags);

	intr = FUNC3(therm, 0x20100);

	/* THRS_4: downclock */
	if (intr & 0x002) {
		FUNC1(therm, 0x20414, 24,
						  &sensor->thrs_down_clock,
						  NOUVEAU_THERM_THRS_DOWNCLOCK);
		intr &= ~0x002;
	}

	/* shutdown */
	if (intr & 0x004) {
		FUNC1(therm, 0x20480, 20,
						   &sensor->thrs_shutdown,
						   NOUVEAU_THERM_THRS_SHUTDOWN);
		intr &= ~0x004;
	}

	/* THRS_1 : fan boost */
	if (intr & 0x008) {
		FUNC1(therm, 0x204c4, 21,
						   &sensor->thrs_fan_boost,
						   NOUVEAU_THERM_THRS_FANBOOST);
		intr &= ~0x008;
	}

	/* THRS_2 : critical */
	if (intr & 0x010) {
		FUNC1(therm, 0x204c0, 22,
						   &sensor->thrs_critical,
						   NOUVEAU_THERM_THRS_CRITICAL);
		intr &= ~0x010;
	}

	if (intr)
		FUNC2(therm, "unhandled intr 0x%08x\n", intr);

	/* ACK everything */
	FUNC4(therm, 0x20100, 0xffffffff);
	FUNC4(therm, 0x1100, 0x10000); /* PBUS */

	FUNC6(&priv->sensor.alarm_program_lock, flags);
}