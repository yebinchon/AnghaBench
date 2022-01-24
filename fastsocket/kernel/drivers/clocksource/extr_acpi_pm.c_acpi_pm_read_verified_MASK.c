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
typedef  scalar_t__ u32 ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 (int) ; 

u32 FUNC2(void)
{
	u32 v1 = 0, v2 = 0, v3 = 0;

	/*
	 * It has been reported that because of various broken
	 * chipsets (ICH4, PIIX4 and PIIX4E) where the ACPI PM clock
	 * source is not latched, you must read it multiple
	 * times to ensure a safe value is read:
	 */
	do {
		v1 = FUNC0();
		v2 = FUNC0();
		v3 = FUNC0();
	} while (FUNC1((v1 > v2 && v1 < v3) || (v2 > v3 && v2 < v1)
			  || (v3 > v1 && v3 < v2)));

	return v2;
}