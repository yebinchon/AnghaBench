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
 int ADT7470_PWM_ALL_TEMPS ; 
 int EINVAL ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(int input)
{
	if (input == ADT7470_PWM_ALL_TEMPS)
		return 0;
	if (input < 1 || !FUNC1(input))
		return -EINVAL;
	return FUNC0(input) + 1;
}