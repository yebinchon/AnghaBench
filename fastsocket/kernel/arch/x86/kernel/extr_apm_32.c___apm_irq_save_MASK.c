#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ allow_ints; } ;

/* Variables and functions */
 TYPE_1__ apm_info ; 
 scalar_t__ FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 

__attribute__((used)) static inline unsigned long FUNC4(void)
{
	unsigned long flags;
	FUNC3(flags);
	if (apm_info.allow_ints) {
		if (FUNC0(flags))
			FUNC2();
	} else
		FUNC1();

	return flags;
}