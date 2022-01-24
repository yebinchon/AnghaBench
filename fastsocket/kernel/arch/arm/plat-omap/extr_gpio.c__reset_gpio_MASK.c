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
struct gpio_bank {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_TYPE_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct gpio_bank*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct gpio_bank*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct gpio_bank*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gpio_bank*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct gpio_bank *bank, int gpio)
{
	FUNC1(bank, FUNC4(gpio), 1);
	FUNC2(bank, gpio, 0);
	FUNC0(bank, gpio);
	FUNC3(bank, FUNC4(gpio), IRQ_TYPE_NONE);
}