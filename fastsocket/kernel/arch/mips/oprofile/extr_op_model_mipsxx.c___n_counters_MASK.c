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
 int M_CONFIG1_PC ; 
 int M_PERFCTL_MORE ; 
 int FUNC0 () ; 
 int FUNC1 () ; 
 int FUNC2 () ; 
 int FUNC3 () ; 

__attribute__((used)) static inline int FUNC4(void)
{
	if (!(FUNC0() & M_CONFIG1_PC))
		return 0;
	if (!(FUNC1() & M_PERFCTL_MORE))
		return 1;
	if (!(FUNC2() & M_PERFCTL_MORE))
		return 2;
	if (!(FUNC3() & M_PERFCTL_MORE))
		return 3;

	return 4;
}