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
typedef  int u8 ;
struct nouveau_therm {int dummy; } ;
struct TYPE_2__ {int chipset; int crystal; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct nouveau_therm*) ; 
 int FUNC1 (struct nouveau_therm*,int) ; 

int
FUNC2(struct nouveau_therm *therm)
{
	int chipset = FUNC0(therm)->chipset;
	int crystal = FUNC0(therm)->crystal;
	int pwm_clock;

	/* determine the PWM source clock */
	if (chipset > 0x50 && chipset < 0x94) {
		u8 pwm_div = FUNC1(therm, 0x410c);
		if (FUNC1(therm, 0xc040) & 0x800000) {
			/* Use the HOST clock (100 MHz)
			* Where does this constant(2.4) comes from? */
			pwm_clock = (100000000 >> pwm_div) * 10 / 24;
		} else {
			/* Where does this constant(20) comes from? */
			pwm_clock = (crystal * 1000) >> pwm_div;
			pwm_clock /= 20;
		}
	} else {
		pwm_clock = (crystal * 1000) / 20;
	}

	return pwm_clock;
}