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
 unsigned int CGIO ; 
 scalar_t__ gpio_ba ; 
 int /*<<< orphan*/  gpio_lock ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct gpio_chip *gc, unsigned  gpio_num)
{
	u8 curr_dirs;
	unsigned short offset, bit;

	FUNC2(&gpio_lock);

	offset = CGIO + gpio_num / 8;
	bit = gpio_num % 8;

	curr_dirs = FUNC0(gpio_ba + offset);

	if (!(curr_dirs & (1 << bit)))
		FUNC1(curr_dirs | (1 << bit), gpio_ba + offset);

	FUNC3(&gpio_lock);
	return 0;
}