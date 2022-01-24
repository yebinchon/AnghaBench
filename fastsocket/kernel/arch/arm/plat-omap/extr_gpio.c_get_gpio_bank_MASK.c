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
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ FUNC7 () ; 
 struct gpio_bank* gpio_bank ; 

__attribute__((used)) static inline struct gpio_bank *FUNC8(int gpio)
{
	if (FUNC2()) {
		if (FUNC1(gpio))
			return &gpio_bank[0];
		return &gpio_bank[1];
	}
	if (FUNC3()) {
		if (FUNC1(gpio))
			return &gpio_bank[0];
		return &gpio_bank[1 + (gpio >> 4)];
	}
	if (FUNC7()) {
		if (FUNC1(gpio))
			return &gpio_bank[0];
		return &gpio_bank[1 + (gpio >> 5)];
	}
	if (FUNC4())
		return &gpio_bank[gpio >> 5];
	if (FUNC5() || FUNC6())
		return &gpio_bank[gpio >> 5];
	FUNC0();
	return NULL;
}