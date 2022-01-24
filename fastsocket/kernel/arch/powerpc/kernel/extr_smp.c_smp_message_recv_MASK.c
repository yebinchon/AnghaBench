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
#define  PPC_MSG_CALL_FUNCTION 131 
#define  PPC_MSG_CALL_FUNC_SINGLE 130 
#define  PPC_MSG_DEBUGGER_BREAK 129 
#define  PPC_MSG_RESCHEDULE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

void FUNC8(int msg)
{
	switch(msg) {
	case PPC_MSG_CALL_FUNCTION:
		FUNC2();
		break;
	case PPC_MSG_RESCHEDULE:
		/* we notice need_resched on exit */
		FUNC6();
		break;
	case PPC_MSG_CALL_FUNC_SINGLE:
		FUNC3();
		break;
	case PPC_MSG_DEBUGGER_BREAK:
		if (&crash_ipi_function_ptr) {
			FUNC0(FUNC4());
			break;
		}
#ifdef CONFIG_DEBUGGER
		debugger_ipi(get_irq_regs());
		break;
#endif /* CONFIG_DEBUGGER */
		/* FALLTHROUGH */
	default:
		FUNC5("SMP %d: smp_message_recv(): unknown msg %d\n",
		       FUNC7(), msg);
		break;
	}
}