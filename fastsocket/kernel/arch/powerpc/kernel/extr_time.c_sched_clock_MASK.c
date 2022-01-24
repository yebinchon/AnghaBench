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
 scalar_t__ FUNC0 () ; 
 scalar_t__ boot_tb ; 
 unsigned long long FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 unsigned long long FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tb_to_ns_scale ; 
 unsigned long long tb_to_ns_shift ; 

unsigned long long FUNC4(void)
{
	if (FUNC0())
		return FUNC1();
	return FUNC3(FUNC2() - boot_tb, tb_to_ns_scale) << tb_to_ns_shift;
}