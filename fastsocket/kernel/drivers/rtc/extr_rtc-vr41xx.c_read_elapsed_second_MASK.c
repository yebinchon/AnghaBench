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
 int /*<<< orphan*/  ETIMEHREG ; 
 int /*<<< orphan*/  ETIMELREG ; 
 int /*<<< orphan*/  ETIMEMREG ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline unsigned long FUNC1(void)
{

	unsigned long first_low, first_mid, first_high;

	unsigned long second_low, second_mid, second_high;

	do {
		first_low = FUNC0(ETIMELREG);
		first_mid = FUNC0(ETIMEMREG);
		first_high = FUNC0(ETIMEHREG);
		second_low = FUNC0(ETIMELREG);
		second_mid = FUNC0(ETIMEMREG);
		second_high = FUNC0(ETIMEHREG);
	} while (first_low != second_low || first_mid != second_mid ||
	         first_high != second_high);

	return (first_high << 17) | (first_mid << 1) | (first_low >> 15);
}