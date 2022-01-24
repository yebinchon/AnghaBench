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
 int /*<<< orphan*/ * current ; 
 int /*<<< orphan*/ * last_task_used_altivec ; 
 int /*<<< orphan*/ * last_task_used_math ; 
 int /*<<< orphan*/ * last_task_used_spe ; 
 int /*<<< orphan*/ * last_task_used_vsx ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 

void FUNC2(void)
{
	FUNC0();
	if (last_task_used_math == current)
		last_task_used_math = NULL;
#ifdef CONFIG_ALTIVEC
	if (last_task_used_altivec == current)
		last_task_used_altivec = NULL;
#endif /* CONFIG_ALTIVEC */
#ifdef CONFIG_VSX
	if (last_task_used_vsx == current)
		last_task_used_vsx = NULL;
#endif /* CONFIG_VSX */
#ifdef CONFIG_SPE
	if (last_task_used_spe == current)
		last_task_used_spe = NULL;
#endif
	FUNC1();
}