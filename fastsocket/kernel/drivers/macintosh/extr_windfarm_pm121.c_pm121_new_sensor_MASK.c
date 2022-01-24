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

/* Variables and functions */
 int pm121_all_sensors_ok ; 
 scalar_t__ FUNC0 (struct wf_sensor*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sensor_cpu_current ; 
 int /*<<< orphan*/  sensor_cpu_power ; 
 int /*<<< orphan*/  sensor_cpu_temp ; 
 int /*<<< orphan*/  sensor_cpu_voltage ; 
 int /*<<< orphan*/  sensor_gpu_temp ; 
 int /*<<< orphan*/  sensor_hard_drive_temp ; 
 int /*<<< orphan*/  sensor_incoming_air_temp ; 
 int /*<<< orphan*/  sensor_north_bridge_temp ; 
 int /*<<< orphan*/  sensor_optical_drive_temp ; 

__attribute__((used)) static void FUNC1(struct wf_sensor *sr)
{
	int all = 1;

	if (pm121_all_sensors_ok)
		return;

	all = FUNC0(sr, "cpu-temp",
				    &sensor_cpu_temp) && all;
	all = FUNC0(sr, "cpu-current",
				    &sensor_cpu_current) && all;
	all = FUNC0(sr, "cpu-voltage",
				    &sensor_cpu_voltage) && all;
	all = FUNC0(sr, "cpu-power",
				    &sensor_cpu_power) && all;
	all = FUNC0(sr, "hard-drive-temp",
				    &sensor_hard_drive_temp) && all;
	all = FUNC0(sr, "optical-drive-temp",
				    &sensor_optical_drive_temp) && all;
	all = FUNC0(sr, "incoming-air-temp",
				    &sensor_incoming_air_temp) && all;
	all = FUNC0(sr, "north-bridge-temp",
				    &sensor_north_bridge_temp) && all;
	all = FUNC0(sr, "gpu-temp",
				    &sensor_gpu_temp) && all;

	if (all)
		pm121_all_sensors_ok = 1;
}