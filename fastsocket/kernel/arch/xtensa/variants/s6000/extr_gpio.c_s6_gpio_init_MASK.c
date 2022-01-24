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
typedef  int u32 ;

/* Variables and functions */
 scalar_t__ S6_GPIO_AFSEL ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ S6_REG_GPIO ; 
 int /*<<< orphan*/  gpiochip ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

int FUNC3(u32 afsel)
{
	FUNC2(afsel, S6_REG_GPIO + FUNC0(0) + S6_GPIO_AFSEL);
	FUNC2(afsel >> 8, S6_REG_GPIO + FUNC0(1) + S6_GPIO_AFSEL);
	FUNC2(afsel >> 16, S6_REG_GPIO + FUNC0(2) + S6_GPIO_AFSEL);
	return FUNC1(&gpiochip);
}