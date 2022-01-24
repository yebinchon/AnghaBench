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
typedef  unsigned long long uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  CVMX_L2D_FUS3 ; 
 unsigned long long FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC1(void)
{
	uint64_t val = FUNC0(CVMX_L2D_FUS3);
	return !!(val & (1ull << 34));
}