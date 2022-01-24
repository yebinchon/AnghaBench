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
struct TYPE_2__ {int /*<<< orphan*/  therm_poll_alarm; } ;
struct nouveau_therm_priv {int /*<<< orphan*/  bios_sensor; TYPE_1__ sensor; } ;
struct nouveau_therm {int dummy; } ;
struct nouveau_bios {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NVBIOS_THERM_DOMAIN_CORE ; 
 int /*<<< orphan*/  alarm_timer_callback ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct nouveau_bios* FUNC1 (struct nouveau_therm*) ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_therm*) ; 
 int /*<<< orphan*/  FUNC3 (struct nouveau_therm*) ; 
 int /*<<< orphan*/  FUNC4 (struct nouveau_therm*,char*) ; 
 scalar_t__ FUNC5 (struct nouveau_bios*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC6(struct nouveau_therm *therm)
{
	struct nouveau_therm_priv *priv = (void *)therm;
	struct nouveau_bios *bios = FUNC1(therm);

	FUNC0(&priv->sensor.therm_poll_alarm, alarm_timer_callback);

	FUNC3(therm);
	if (FUNC5(bios, NVBIOS_THERM_DOMAIN_CORE,
				      &priv->bios_sensor))
		FUNC4(therm, "nvbios_therm_sensor_parse failed\n");
	FUNC2(therm);

	return 0;
}