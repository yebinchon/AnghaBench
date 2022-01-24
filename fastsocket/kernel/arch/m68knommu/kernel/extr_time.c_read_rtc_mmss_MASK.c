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
 int /*<<< orphan*/  FUNC0 (unsigned int*,unsigned int*,unsigned int*,unsigned int*,unsigned int*,unsigned int*) ; 
 unsigned long FUNC1 (unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int) ; 

__attribute__((used)) static unsigned long FUNC2(void)
{
	unsigned int year, mon, day, hour, min, sec;

	if (&mach_gettod)
		FUNC0(&year, &mon, &day, &hour, &min, &sec);
	else
		year = mon = day = hour = min = sec = 0;

	if ((year += 1900) < 1970)
		year += 100;

	return  FUNC1(year, mon, day, hour, min, sec);
}