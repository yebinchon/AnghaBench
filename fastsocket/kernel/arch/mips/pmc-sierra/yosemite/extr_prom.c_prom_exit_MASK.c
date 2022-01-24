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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  (*) (int /*<<< orphan*/ *),int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 () ; 

__attribute__((used)) static void FUNC3(void)
{
#ifdef CONFIG_SMP
	if (smp_processor_id())
		/* CPU 1 */
		smp_call_function(prom_cpu0_exit, NULL, 1);
#endif
	FUNC0(NULL);
}