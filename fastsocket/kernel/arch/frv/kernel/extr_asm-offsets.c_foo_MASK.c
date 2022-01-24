#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct user_int_regs {int dummy; } ;
struct user_fpmedia_regs {int dummy; } ;
struct user_context {int dummy; } ;
struct pt_regs {int dummy; } ;
struct frv_frame0 {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/ ** dbmr; int /*<<< orphan*/ ** dbdr; int /*<<< orphan*/ * dbar; int /*<<< orphan*/ * ibar; int /*<<< orphan*/  dcr; } ;
struct TYPE_6__ {struct TYPE_6__* fsr; struct TYPE_6__* accg; struct TYPE_6__* acc; struct TYPE_6__* msr; struct TYPE_6__* fner; struct TYPE_6__* fr; } ;
struct TYPE_5__ {int /*<<< orphan*/ * gr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  DEBUG_BPSR ; 
 int /*<<< orphan*/  DEBUG_BRR ; 
 int /*<<< orphan*/  DEBUG_DCR ; 
 int /*<<< orphan*/  DEBUG_NMAR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FRV_FRAME0_SIZE ; 
 int /*<<< orphan*/  NR_PT_REGS ; 
 int /*<<< orphan*/  NR_USER_CONTEXT ; 
 int /*<<< orphan*/  NR_USER_FPMEDIA_REGS ; 
 int /*<<< orphan*/  NR_USER_INT_REGS ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_CCCR ; 
 int /*<<< orphan*/  REG_CCR ; 
 int /*<<< orphan*/  REG_DBAR0 ; 
 int /*<<< orphan*/  REG_DBDR00 ; 
 int /*<<< orphan*/  REG_DBMR00 ; 
 int /*<<< orphan*/  REG_DCR ; 
 int /*<<< orphan*/  REG_GNER0 ; 
 int /*<<< orphan*/  REG_GNER1 ; 
 int /*<<< orphan*/  REG_GR0 ; 
 int /*<<< orphan*/  REG_IACC0 ; 
 int /*<<< orphan*/  REG_IBAR0 ; 
 int /*<<< orphan*/  REG_ISR ; 
 int /*<<< orphan*/  REG_LCR ; 
 int /*<<< orphan*/  REG_LR ; 
 int /*<<< orphan*/  REG_ORIG_GR8 ; 
 int /*<<< orphan*/  REG_PC ; 
 int /*<<< orphan*/  REG_PSR ; 
 int /*<<< orphan*/  REG_SYSCALLNO ; 
 int /*<<< orphan*/  REG_TBR ; 
 int /*<<< orphan*/  REG__END ; 
 int /*<<< orphan*/  REG__STATUS ; 
 int /*<<< orphan*/  TI_ADDR_LIMIT ; 
 int /*<<< orphan*/  TI_CPU ; 
 int /*<<< orphan*/  TI_EXEC_DOMAIN ; 
 int /*<<< orphan*/  TI_FLAGS ; 
 int /*<<< orphan*/  TI_PREEMPT_COUNT ; 
 int /*<<< orphan*/  TI_RESTART_BLOCK ; 
 int /*<<< orphan*/  TI_STATUS ; 
 int /*<<< orphan*/  TI_TASK ; 
 int /*<<< orphan*/  __FPMEDIA_ACC0 ; 
 int /*<<< orphan*/  __FPMEDIA_ACCG0 ; 
 int /*<<< orphan*/  __FPMEDIA_FNER0 ; 
 int /*<<< orphan*/  __FPMEDIA_FR0 ; 
 int /*<<< orphan*/  __FPMEDIA_FSR0 ; 
 int /*<<< orphan*/  __FPMEDIA_MSR0 ; 
 int /*<<< orphan*/  __INT_GR0 ; 
 int /*<<< orphan*/  __THREAD_CURR ; 
 int /*<<< orphan*/  __THREAD_FP ; 
 int /*<<< orphan*/  __THREAD_FRAME ; 
 int /*<<< orphan*/  __THREAD_FRAME0 ; 
 int /*<<< orphan*/  __THREAD_GR16 ; 
 int /*<<< orphan*/  __THREAD_LR ; 
 int /*<<< orphan*/  __THREAD_PC ; 
 int /*<<< orphan*/  __THREAD_SCHED_LR ; 
 int /*<<< orphan*/  __THREAD_SP ; 
 int /*<<< orphan*/  __THREAD_USER ; 
 int /*<<< orphan*/  __USER_FPMEDIA ; 
 int /*<<< orphan*/  __status ; 
 int /*<<< orphan*/  addr_limit ; 
 int /*<<< orphan*/  bpsr ; 
 int /*<<< orphan*/  brr ; 
 int /*<<< orphan*/  cccr ; 
 int /*<<< orphan*/  ccr ; 
 int /*<<< orphan*/  cpu ; 
 int /*<<< orphan*/  curr ; 
 int /*<<< orphan*/  dcr ; 
 TYPE_3__ debug ; 
 int /*<<< orphan*/  exec_domain ; 
 TYPE_2__ f ; 
 int /*<<< orphan*/  flags ; 
 int /*<<< orphan*/  fp ; 
 int /*<<< orphan*/  frame ; 
 int /*<<< orphan*/  frame0 ; 
 int /*<<< orphan*/  frv_debug_status ; 
 int /*<<< orphan*/  gner0 ; 
 int /*<<< orphan*/  gner1 ; 
 int /*<<< orphan*/ * gr ; 
 TYPE_1__ i ; 
 int /*<<< orphan*/  iacc0 ; 
 int /*<<< orphan*/  isr ; 
 int /*<<< orphan*/  lcr ; 
 int /*<<< orphan*/  lr ; 
 int /*<<< orphan*/  nmar ; 
 int /*<<< orphan*/  orig_gr8 ; 
 int /*<<< orphan*/  pc ; 
 int /*<<< orphan*/  preempt_count ; 
 int /*<<< orphan*/  psr ; 
 int /*<<< orphan*/  restart_block ; 
 int /*<<< orphan*/  sched_lr ; 
 int /*<<< orphan*/  sp ; 
 int /*<<< orphan*/  status ; 
 int /*<<< orphan*/  syscallno ; 
 int /*<<< orphan*/  task ; 
 int /*<<< orphan*/  tbr ; 
 int /*<<< orphan*/  thread_info ; 
 int /*<<< orphan*/  thread_struct ; 
 int /*<<< orphan*/  user ; 

void FUNC7(void)
{
	/* offsets into the thread_info structure */
	FUNC6(TI_TASK,			thread_info, task);
	FUNC6(TI_EXEC_DOMAIN,		thread_info, exec_domain);
	FUNC6(TI_FLAGS,		thread_info, flags);
	FUNC6(TI_STATUS,		thread_info, status);
	FUNC6(TI_CPU,			thread_info, cpu);
	FUNC6(TI_PREEMPT_COUNT,	thread_info, preempt_count);
	FUNC6(TI_ADDR_LIMIT,		thread_info, addr_limit);
	FUNC6(TI_RESTART_BLOCK,	thread_info, restart_block);
	FUNC0();

	/* offsets into register file storage */
	FUNC5(REG_PSR,		psr);
	FUNC5(REG_ISR,		isr);
	FUNC5(REG_CCR,		ccr);
	FUNC5(REG_CCCR,		cccr);
	FUNC5(REG_LR,		lr);
	FUNC5(REG_LCR,		lcr);
	FUNC5(REG_PC,		pc);
	FUNC5(REG__STATUS,		__status);
	FUNC5(REG_SYSCALLNO,	syscallno);
	FUNC5(REG_ORIG_GR8,		orig_gr8);
	FUNC5(REG_GNER0,		gner0);
	FUNC5(REG_GNER1,		gner1);
	FUNC5(REG_IACC0,		iacc0);
	FUNC5(REG_TBR,		tbr);
	FUNC5(REG_GR0,		tbr);
	FUNC1(REG__END,		sizeof(struct pt_regs));
	FUNC0();

	FUNC2(REG_DCR,		debug.dcr);
	FUNC2(REG_IBAR0,		debug.ibar[0]);
	FUNC2(REG_DBAR0,		debug.dbar[0]);
	FUNC2(REG_DBDR00,		debug.dbdr[0][0]);
	FUNC2(REG_DBMR00,		debug.dbmr[0][0]);
	FUNC0();

	FUNC4(__INT_GR0,		i.gr[0]);
	FUNC3(__USER_FPMEDIA,	f);
	FUNC3(__FPMEDIA_FR0,		f.fr[0]);
	FUNC3(__FPMEDIA_FNER0,	f.fner[0]);
	FUNC3(__FPMEDIA_MSR0,	f.msr[0]);
	FUNC3(__FPMEDIA_ACC0,	f.acc[0]);
	FUNC3(__FPMEDIA_ACCG0,	f.accg[0]);
	FUNC3(__FPMEDIA_FSR0,	f.fsr[0]);
	FUNC0();

	FUNC1(NR_PT_REGS,		sizeof(struct pt_regs) / 4);
	FUNC1(NR_USER_INT_REGS,	sizeof(struct user_int_regs) / 4);
	FUNC1(NR_USER_FPMEDIA_REGS,	sizeof(struct user_fpmedia_regs) / 4);
	FUNC1(NR_USER_CONTEXT,		sizeof(struct user_context) / 4);
	FUNC1(FRV_FRAME0_SIZE,		sizeof(struct frv_frame0));
	FUNC0();

	/* offsets into thread_struct */
	FUNC6(__THREAD_FRAME,		thread_struct, frame);
	FUNC6(__THREAD_CURR,		thread_struct, curr);
	FUNC6(__THREAD_SP,		thread_struct, sp);
	FUNC6(__THREAD_FP,		thread_struct, fp);
	FUNC6(__THREAD_LR,		thread_struct, lr);
	FUNC6(__THREAD_PC,		thread_struct, pc);
	FUNC6(__THREAD_GR16,		thread_struct, gr[0]);
	FUNC6(__THREAD_SCHED_LR,	thread_struct, sched_lr);
	FUNC6(__THREAD_FRAME0,		thread_struct, frame0);
	FUNC6(__THREAD_USER,		thread_struct, user);
	FUNC0();

	/* offsets into frv_debug_status */
	FUNC6(DEBUG_BPSR,		frv_debug_status, bpsr);
	FUNC6(DEBUG_DCR,		frv_debug_status, dcr);
	FUNC6(DEBUG_BRR,		frv_debug_status, brr);
	FUNC6(DEBUG_NMAR,		frv_debug_status, nmar);
	FUNC0();
}