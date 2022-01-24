#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct wf_sensor {int dummy; } ;
struct smu_cpu_power_sensor {scalar_t__ amps; scalar_t__ volts; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct smu_cpu_power_sensor*) ; 
 struct smu_cpu_power_sensor* FUNC1 (struct wf_sensor*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct wf_sensor *sr)
{
	struct smu_cpu_power_sensor *pow = FUNC1(sr);

	if (pow->volts)
		FUNC2(pow->volts);
	if (pow->amps)
		FUNC2(pow->amps);
	FUNC0(pow);
}