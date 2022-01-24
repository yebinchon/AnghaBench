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
 int FUNC0 (unsigned long long*,int) ; 

__attribute__((used)) static int FUNC1(void)
{
	unsigned long long facility_bits[2];

	if (FUNC0(facility_bits, 2) <= 1)
		return 0;
	if (!(facility_bits[0] & (1ULL << 61)) ||
	    !(facility_bits[0] & (1ULL << 51)))
		return 0;
	return 1;
}