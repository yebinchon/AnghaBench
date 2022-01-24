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
 scalar_t__ CPLD_CARDSTAT ; 
 int ENXIO ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ cpld ; 

__attribute__((used)) static int FUNC2(int module)
{
	if (!cpld)
		return -ENXIO;

	/* low == card present */
	return !(FUNC1(cpld + CPLD_CARDSTAT) & FUNC0(module ? 4 : 0));
}