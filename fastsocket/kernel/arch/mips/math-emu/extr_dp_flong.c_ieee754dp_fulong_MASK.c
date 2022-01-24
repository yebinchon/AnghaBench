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
typedef  unsigned long long u64 ;
typedef  scalar_t__ s64 ;
typedef  int /*<<< orphan*/  ieee754dp ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long long) ; 

ieee754dp FUNC3(u64 u)
{
	if ((s64) u < 0)
		return FUNC1(FUNC0(),
				     FUNC2(u & ~(1ULL << 63)));
	return FUNC2(u);
}