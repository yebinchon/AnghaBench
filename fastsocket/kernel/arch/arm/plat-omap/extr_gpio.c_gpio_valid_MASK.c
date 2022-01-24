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
 scalar_t__ FUNC0 (int) ; 
 int OMAP_MAX_GPIO_LINES ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ FUNC7 () ; 

__attribute__((used)) static inline int FUNC8(int gpio)
{
	if (gpio < 0)
		return -1;
	if (FUNC1() && FUNC0(gpio)) {
		if (gpio >= OMAP_MAX_GPIO_LINES + 16)
			return -1;
		return 0;
	}
	if (FUNC2() && gpio < 16)
		return 0;
	if ((FUNC3()) && gpio < 64)
		return 0;
	if (FUNC7() && gpio < 192)
		return 0;
	if (FUNC4() && gpio < 128)
		return 0;
	if ((FUNC5() || FUNC6()) && gpio < 192)
		return 0;
	return -1;
}