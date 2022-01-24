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
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 unsigned int CGLV ; 
 scalar_t__ gpio_ba ; 
 int /*<<< orphan*/  gpio_lock ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct gpio_chip *gc, unsigned gpio_num, int val)
{
	u8 curr_vals;
	unsigned short offset, bit;

	FUNC2(&gpio_lock);

	offset = CGLV + gpio_num / 8;
	bit = gpio_num % 8;

	curr_vals = FUNC0(gpio_ba + offset);

	if (val)
		FUNC1(curr_vals | (1 << bit), gpio_ba + offset);
	else
		FUNC1((curr_vals & ~(1 << bit)), gpio_ba + offset);
	FUNC3(&gpio_lock);
}