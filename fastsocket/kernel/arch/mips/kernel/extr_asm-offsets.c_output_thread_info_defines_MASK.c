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
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THREAD_MASK ; 
 int /*<<< orphan*/  THREAD_SIZE ; 
 int /*<<< orphan*/  TI_ADDR_LIMIT ; 
 int /*<<< orphan*/  TI_CPU ; 
 int /*<<< orphan*/  TI_EXEC_DOMAIN ; 
 int /*<<< orphan*/  TI_FLAGS ; 
 int /*<<< orphan*/  TI_PRE_COUNT ; 
 int /*<<< orphan*/  TI_REGS ; 
 int /*<<< orphan*/  TI_RESTART_BLOCK ; 
 int /*<<< orphan*/  TI_TASK ; 
 int /*<<< orphan*/  TI_TP_VALUE ; 
 int /*<<< orphan*/  _THREAD_MASK ; 
 int /*<<< orphan*/  _THREAD_SIZE ; 
 int /*<<< orphan*/  addr_limit ; 
 int /*<<< orphan*/  cpu ; 
 int /*<<< orphan*/  exec_domain ; 
 int /*<<< orphan*/  flags ; 
 int /*<<< orphan*/  preempt_count ; 
 int /*<<< orphan*/  regs ; 
 int /*<<< orphan*/  restart_block ; 
 int /*<<< orphan*/  task ; 
 int /*<<< orphan*/  thread_info ; 
 int /*<<< orphan*/  tp_value ; 

void FUNC4(void)
{
	FUNC1("MIPS thread_info offsets.");
	FUNC3(TI_TASK, thread_info, task);
	FUNC3(TI_EXEC_DOMAIN, thread_info, exec_domain);
	FUNC3(TI_FLAGS, thread_info, flags);
	FUNC3(TI_TP_VALUE, thread_info, tp_value);
	FUNC3(TI_CPU, thread_info, cpu);
	FUNC3(TI_PRE_COUNT, thread_info, preempt_count);
	FUNC3(TI_ADDR_LIMIT, thread_info, addr_limit);
	FUNC3(TI_RESTART_BLOCK, thread_info, restart_block);
	FUNC3(TI_REGS, thread_info, regs);
	FUNC2(_THREAD_SIZE, THREAD_SIZE);
	FUNC2(_THREAD_MASK, THREAD_MASK);
	FUNC0();
}