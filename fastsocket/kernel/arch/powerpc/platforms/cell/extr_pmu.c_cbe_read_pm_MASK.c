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
typedef  int /*<<< orphan*/  u32 ;
typedef  enum pm_reg_name { ____Placeholder_pm_reg_name } pm_reg_name ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int const) ; 
#define  debug_bus_control 135 
#define  ext_tr_timer 134 
#define  group_control 133 
#define  pm_control 132 
#define  pm_interval 131 
#define  pm_start_stop 130 
#define  pm_status 129 
#define  trace_address 128 

u32 FUNC2(u32 cpu, enum pm_reg_name reg)
{
	u32 val = 0;

	switch (reg) {
	case group_control:
		FUNC1(val, group_control);
		break;

	case debug_bus_control:
		FUNC1(val, debug_bus_control);
		break;

	case trace_address:
		FUNC0(val, trace_address);
		break;

	case ext_tr_timer:
		FUNC1(val, ext_tr_timer);
		break;

	case pm_status:
		FUNC0(val, pm_status);
		break;

	case pm_control:
		FUNC1(val, pm_control);
		break;

	case pm_interval:
		FUNC0(val, pm_interval);
		break;

	case pm_start_stop:
		FUNC1(val, pm_start_stop);
		break;
	}

	return val;
}