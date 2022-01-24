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
struct TYPE_2__ {int /*<<< orphan*/  irix_oldctx; int /*<<< orphan*/  irix_trampoline; int /*<<< orphan*/  trap_no; int /*<<< orphan*/  error_code; int /*<<< orphan*/  cp0_baduaddr; int /*<<< orphan*/  cp0_badvaddr; int /*<<< orphan*/  fpu; int /*<<< orphan*/  cp0_status; int /*<<< orphan*/  reg31; int /*<<< orphan*/  reg30; int /*<<< orphan*/  reg29; int /*<<< orphan*/  reg23; int /*<<< orphan*/  reg22; int /*<<< orphan*/  reg21; int /*<<< orphan*/  reg20; int /*<<< orphan*/  reg19; int /*<<< orphan*/  reg18; int /*<<< orphan*/  reg17; int /*<<< orphan*/  reg16; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THREAD_BUADDR ; 
 int /*<<< orphan*/  THREAD_BVADDR ; 
 int /*<<< orphan*/  THREAD_ECODE ; 
 int /*<<< orphan*/  THREAD_FPU ; 
 int /*<<< orphan*/  THREAD_OLDCTX ; 
 int /*<<< orphan*/  THREAD_REG16 ; 
 int /*<<< orphan*/  THREAD_REG17 ; 
 int /*<<< orphan*/  THREAD_REG18 ; 
 int /*<<< orphan*/  THREAD_REG19 ; 
 int /*<<< orphan*/  THREAD_REG20 ; 
 int /*<<< orphan*/  THREAD_REG21 ; 
 int /*<<< orphan*/  THREAD_REG22 ; 
 int /*<<< orphan*/  THREAD_REG23 ; 
 int /*<<< orphan*/  THREAD_REG29 ; 
 int /*<<< orphan*/  THREAD_REG30 ; 
 int /*<<< orphan*/  THREAD_REG31 ; 
 int /*<<< orphan*/  THREAD_STATUS ; 
 int /*<<< orphan*/  THREAD_TRAMP ; 
 int /*<<< orphan*/  THREAD_TRAPNO ; 
 int /*<<< orphan*/  task_struct ; 
 TYPE_1__ thread ; 

void FUNC3(void)
{
	FUNC1("MIPS specific thread_struct offsets.");
	FUNC2(THREAD_REG16, task_struct, thread.reg16);
	FUNC2(THREAD_REG17, task_struct, thread.reg17);
	FUNC2(THREAD_REG18, task_struct, thread.reg18);
	FUNC2(THREAD_REG19, task_struct, thread.reg19);
	FUNC2(THREAD_REG20, task_struct, thread.reg20);
	FUNC2(THREAD_REG21, task_struct, thread.reg21);
	FUNC2(THREAD_REG22, task_struct, thread.reg22);
	FUNC2(THREAD_REG23, task_struct, thread.reg23);
	FUNC2(THREAD_REG29, task_struct, thread.reg29);
	FUNC2(THREAD_REG30, task_struct, thread.reg30);
	FUNC2(THREAD_REG31, task_struct, thread.reg31);
	FUNC2(THREAD_STATUS, task_struct,
	       thread.cp0_status);
	FUNC2(THREAD_FPU, task_struct, thread.fpu);

	FUNC2(THREAD_BVADDR, task_struct, \
	       thread.cp0_badvaddr);
	FUNC2(THREAD_BUADDR, task_struct, \
	       thread.cp0_baduaddr);
	FUNC2(THREAD_ECODE, task_struct, \
	       thread.error_code);
	FUNC2(THREAD_TRAPNO, task_struct, thread.trap_no);
	FUNC2(THREAD_TRAMP, task_struct, \
	       thread.irix_trampoline);
	FUNC2(THREAD_OLDCTX, task_struct, \
	       thread.irix_oldctx);
	FUNC0();
}