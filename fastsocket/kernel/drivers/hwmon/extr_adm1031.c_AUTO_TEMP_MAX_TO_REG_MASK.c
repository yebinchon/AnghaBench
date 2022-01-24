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

/* Variables and functions */
 int FUNC0 (int) ; 

__attribute__((used)) static int FUNC1(int val, int reg, int pwm)
{
	int ret;
	int range = val - FUNC0(reg);

	range = ((val - FUNC0(reg))*10)/(16 - pwm);
	ret = ((reg & 0xf8) |
	       (range < 10000 ? 0 :
		range < 20000 ? 1 :
		range < 40000 ? 2 : range < 80000 ? 3 : 4));
	return ret;
}