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
struct tda8083_state {int dummy; } ;
typedef  int fe_sec_voltage_t ;

/* Variables and functions */
 int EINVAL ; 
#define  SEC_VOLTAGE_13 129 
#define  SEC_VOLTAGE_18 128 
 int FUNC0 (struct tda8083_state*,int,int) ; 

__attribute__((used)) static int FUNC1 (struct tda8083_state* state, fe_sec_voltage_t voltage)
{
	switch (voltage) {
	case SEC_VOLTAGE_13:
		return FUNC0 (state, 0x20, 0x00);
	case SEC_VOLTAGE_18:
		return FUNC0 (state, 0x20, 0x11);
	default:
		return -EINVAL;
	};
}