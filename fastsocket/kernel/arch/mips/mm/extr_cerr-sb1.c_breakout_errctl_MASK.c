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
 unsigned int CP0_ERRCTL_DCACHE ; 
 unsigned int CP0_ERRCTL_ICACHE ; 
 unsigned int CP0_ERRCTL_MULTIBUS ; 
 unsigned int CP0_ERRCTL_RECOVERABLE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 

__attribute__((used)) static inline void FUNC1(unsigned int val)
{
	if (val & CP0_ERRCTL_RECOVERABLE)
		FUNC0(" recoverable");
	if (val & CP0_ERRCTL_DCACHE)
		FUNC0(" dcache");
	if (val & CP0_ERRCTL_ICACHE)
		FUNC0(" icache");
	if (val & CP0_ERRCTL_MULTIBUS)
		FUNC0(" multiple-buserr");
	FUNC0("\n");
}