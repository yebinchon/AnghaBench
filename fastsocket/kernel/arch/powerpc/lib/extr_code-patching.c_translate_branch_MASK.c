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
 unsigned long FUNC0 (unsigned int const*) ; 
 unsigned int FUNC1 (unsigned int const*,unsigned long,unsigned int const) ; 
 unsigned int FUNC2 (unsigned int const*,unsigned long,unsigned int const) ; 
 scalar_t__ FUNC3 (unsigned int const) ; 
 scalar_t__ FUNC4 (unsigned int const) ; 

unsigned int FUNC5(const unsigned int *dest, const unsigned int *src)
{
	unsigned long target;

	target = FUNC0(src);

	if (FUNC4(*src))
		return FUNC1(dest, target, *src);
	else if (FUNC3(*src))
		return FUNC2(dest, target, *src);

	return 0;
}