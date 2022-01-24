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
typedef  int u8 ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int EPERM ; 
 int REG_GPIODATAIN1 ; 
 int TWL4030_GPIO_MAX ; 
 int FUNC1 (int) ; 
 int gpio_usage_count ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(int gpio)
{
	u8 d_bnk = gpio >> 3;
	u8 d_off = gpio & 0x7;
	u8 base = 0;
	int ret = 0;

	if (FUNC2((gpio >= TWL4030_GPIO_MAX)
		|| !(gpio_usage_count & FUNC0(gpio))))
		return -EPERM;

	base = REG_GPIODATAIN1 + d_bnk;
	ret = FUNC1(base);
	if (ret > 0)
		ret = (ret >> d_off) & 0x1;

	return ret;
}