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
struct seq_file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMI_PRODUCT_SERIAL ; 
 int /*<<< orphan*/  I8K_FAN_LEFT ; 
 int /*<<< orphan*/  I8K_FAN_RIGHT ; 
 int /*<<< orphan*/  I8K_PROC_FMT ; 
 int /*<<< orphan*/  bios_version ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 () ; 
 int FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ power_status ; 
 int FUNC6 (struct seq_file*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,int,int,int) ; 

__attribute__((used)) static int FUNC7(struct seq_file *seq, void *offset)
{
	int fn_key, cpu_temp, ac_power;
	int left_fan, right_fan, left_speed, right_speed;

	cpu_temp	= FUNC5(0);			/* 11100 µs */
	left_fan	= FUNC2(I8K_FAN_LEFT);	/*   580 µs */
	right_fan	= FUNC2(I8K_FAN_RIGHT);	/*   580 µs */
	left_speed	= FUNC1(I8K_FAN_LEFT);	/*   580 µs */
	right_speed	= FUNC1(I8K_FAN_RIGHT);	/*   580 µs */
	fn_key		= FUNC3();			/*   750 µs */
	if (power_status)
		ac_power = FUNC4();		/* 14700 µs */
	else
		ac_power = -1;

	/*
	 * Info:
	 *
	 * 1)  Format version (this will change if format changes)
	 * 2)  BIOS version
	 * 3)  BIOS machine ID
	 * 4)  Cpu temperature
	 * 5)  Left fan status
	 * 6)  Right fan status
	 * 7)  Left fan speed
	 * 8)  Right fan speed
	 * 9)  AC power
	 * 10) Fn Key status
	 */
	return FUNC6(seq, "%s %s %s %d %d %d %d %d %d %d\n",
			  I8K_PROC_FMT,
			  bios_version,
			  FUNC0(DMI_PRODUCT_SERIAL),
			  cpu_temp,
			  left_fan, right_fan, left_speed, right_speed,
			  ac_power, fn_key);
}