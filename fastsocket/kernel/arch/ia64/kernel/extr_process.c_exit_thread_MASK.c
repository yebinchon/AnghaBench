#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int flags; scalar_t__ pfm_context; } ;
struct TYPE_9__ {TYPE_1__ thread; } ;

/* Variables and functions */
 int IA64_THREAD_DBG_VALID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

void
FUNC6 (void)
{

	FUNC2(current);
#ifdef CONFIG_PERFMON
       /* if needed, stop monitoring and flush state to perfmon context */
	if (current->thread.pfm_context)
		pfm_exit_thread(current);

	/* free debug register resources */
	if (current->thread.flags & IA64_THREAD_DBG_VALID)
		pfm_release_debug_registers(current);
#endif
	if (FUNC0(FUNC5(current)))
		FUNC1(current);
}