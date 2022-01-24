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
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 

__attribute__((used)) static inline int FUNC3(unsigned gpio)
{
#if defined(CONFIG_PROCESSOR_NS9360)
	if (processor_is_ns9360())
		return gpio <= 72;
	else
#endif
#if defined(CONFIG_PROCESSOR_NS9750)
	if (processor_is_ns9750())
		return gpio <= 49;
	else
#endif
	{
		FUNC0();
		return 0;
	}
}