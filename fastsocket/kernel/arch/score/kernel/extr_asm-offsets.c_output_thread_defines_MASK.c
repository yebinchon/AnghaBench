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
struct TYPE_2__ {int /*<<< orphan*/  trap_no; int /*<<< orphan*/  error_code; int /*<<< orphan*/  cp0_baduaddr; int /*<<< orphan*/  cp0_ema; int /*<<< orphan*/  cp0_psr; int /*<<< orphan*/  reg29; int /*<<< orphan*/  reg21; int /*<<< orphan*/  reg20; int /*<<< orphan*/  reg19; int /*<<< orphan*/  reg18; int /*<<< orphan*/  reg17; int /*<<< orphan*/  reg16; int /*<<< orphan*/  reg15; int /*<<< orphan*/  reg14; int /*<<< orphan*/  reg13; int /*<<< orphan*/  reg12; int /*<<< orphan*/  reg3; int /*<<< orphan*/  reg2; int /*<<< orphan*/  reg0; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THREAD_BADUADDR ; 
 int /*<<< orphan*/  THREAD_ECODE ; 
 int /*<<< orphan*/  THREAD_EMA ; 
 int /*<<< orphan*/  THREAD_PSR ; 
 int /*<<< orphan*/  THREAD_REG0 ; 
 int /*<<< orphan*/  THREAD_REG12 ; 
 int /*<<< orphan*/  THREAD_REG13 ; 
 int /*<<< orphan*/  THREAD_REG14 ; 
 int /*<<< orphan*/  THREAD_REG15 ; 
 int /*<<< orphan*/  THREAD_REG16 ; 
 int /*<<< orphan*/  THREAD_REG17 ; 
 int /*<<< orphan*/  THREAD_REG18 ; 
 int /*<<< orphan*/  THREAD_REG19 ; 
 int /*<<< orphan*/  THREAD_REG2 ; 
 int /*<<< orphan*/  THREAD_REG20 ; 
 int /*<<< orphan*/  THREAD_REG21 ; 
 int /*<<< orphan*/  THREAD_REG29 ; 
 int /*<<< orphan*/  THREAD_REG3 ; 
 int /*<<< orphan*/  THREAD_TRAPNO ; 
 int /*<<< orphan*/  task_struct ; 
 TYPE_1__ thread ; 

void FUNC3(void)
{
	FUNC1("SCORE specific thread_struct offsets.");
	FUNC2(THREAD_REG0, task_struct, thread.reg0);
	FUNC2(THREAD_REG2, task_struct, thread.reg2);
	FUNC2(THREAD_REG3, task_struct, thread.reg3);
	FUNC2(THREAD_REG12, task_struct, thread.reg12);
	FUNC2(THREAD_REG13, task_struct, thread.reg13);
	FUNC2(THREAD_REG14, task_struct, thread.reg14);
	FUNC2(THREAD_REG15, task_struct, thread.reg15);
	FUNC2(THREAD_REG16, task_struct, thread.reg16);
	FUNC2(THREAD_REG17, task_struct, thread.reg17);
	FUNC2(THREAD_REG18, task_struct, thread.reg18);
	FUNC2(THREAD_REG19, task_struct, thread.reg19);
	FUNC2(THREAD_REG20, task_struct, thread.reg20);
	FUNC2(THREAD_REG21, task_struct, thread.reg21);
	FUNC2(THREAD_REG29, task_struct, thread.reg29);

	FUNC2(THREAD_PSR, task_struct, thread.cp0_psr);
	FUNC2(THREAD_EMA, task_struct, thread.cp0_ema);
	FUNC2(THREAD_BADUADDR, task_struct, thread.cp0_baduaddr);
	FUNC2(THREAD_ECODE, task_struct, thread.error_code);
	FUNC2(THREAD_TRAPNO, task_struct, thread.trap_no);
	FUNC0();
}