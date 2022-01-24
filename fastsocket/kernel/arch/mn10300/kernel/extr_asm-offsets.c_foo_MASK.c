#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pt_regs {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  state; } ;
struct TYPE_5__ {int /*<<< orphan*/  uc_mcontext; } ;
struct TYPE_4__ {int /*<<< orphan*/  tail; int /*<<< orphan*/  head; int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int CLONE_FILES ; 
 int /*<<< orphan*/  CLONE_FILES_asm ; 
 int CLONE_FS ; 
 int /*<<< orphan*/  CLONE_FS_asm ; 
 int CLONE_SIGHAND ; 
 int /*<<< orphan*/  CLONE_SIGHAND_asm ; 
 int CLONE_UNTRACED ; 
 int /*<<< orphan*/  CLONE_UNTRACED_asm ; 
 int CLONE_VM ; 
 int /*<<< orphan*/  CLONE_VM_asm ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  EXEC_DOMAIN_handler ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  PAGE_SIZE_asm ; 
 int /*<<< orphan*/  REG_A0 ; 
 int /*<<< orphan*/  REG_A1 ; 
 int /*<<< orphan*/  REG_A2 ; 
 int /*<<< orphan*/  REG_A3 ; 
 int /*<<< orphan*/  REG_D0 ; 
 int /*<<< orphan*/  REG_D1 ; 
 int /*<<< orphan*/  REG_D2 ; 
 int /*<<< orphan*/  REG_D3 ; 
 int /*<<< orphan*/  REG_E0 ; 
 int /*<<< orphan*/  REG_E1 ; 
 int /*<<< orphan*/  REG_E2 ; 
 int /*<<< orphan*/  REG_E3 ; 
 int /*<<< orphan*/  REG_E4 ; 
 int /*<<< orphan*/  REG_E5 ; 
 int /*<<< orphan*/  REG_E6 ; 
 int /*<<< orphan*/  REG_E7 ; 
 int /*<<< orphan*/  REG_EPSW ; 
 int /*<<< orphan*/  REG_LAR ; 
 int /*<<< orphan*/  REG_LIR ; 
 int /*<<< orphan*/  REG_MCRH ; 
 int /*<<< orphan*/  REG_MCRL ; 
 int /*<<< orphan*/  REG_MCVF ; 
 int /*<<< orphan*/  REG_MDR ; 
 int /*<<< orphan*/  REG_MDRQ ; 
 int /*<<< orphan*/  REG_NEXT ; 
 int /*<<< orphan*/  REG_ORIG_D0 ; 
 int /*<<< orphan*/  REG_PC ; 
 int /*<<< orphan*/  REG_SP ; 
 int /*<<< orphan*/  REG__END ; 
 int /*<<< orphan*/  RT_SIGFRAME_sigcontext ; 
 int SIGCHLD ; 
 int /*<<< orphan*/  SIGCHLD_asm ; 
 int /*<<< orphan*/  SIGCONTEXT_d0 ; 
 int /*<<< orphan*/  SIGCONTEXT_d1 ; 
 int /*<<< orphan*/  THREAD_A3 ; 
 int /*<<< orphan*/  THREAD_FRAME ; 
 int /*<<< orphan*/  THREAD_PC ; 
 int /*<<< orphan*/  THREAD_SP ; 
 int /*<<< orphan*/  THREAD_UREGS ; 
 int /*<<< orphan*/  THREAD_USP ; 
 int /*<<< orphan*/  TI_addr_limit ; 
 int /*<<< orphan*/  TI_cpu ; 
 int /*<<< orphan*/  TI_exec_domain ; 
 int /*<<< orphan*/  TI_flags ; 
 int /*<<< orphan*/  TI_preempt_count ; 
 int /*<<< orphan*/  TI_restart_block ; 
 int /*<<< orphan*/  TI_task ; 
 int UART_XMIT_SIZE ; 
 int /*<<< orphan*/  __UART_XMIT_SIZE ; 
 int /*<<< orphan*/  __frame ; 
 int /*<<< orphan*/  __intr_flags ; 
 int /*<<< orphan*/  __iobase ; 
 int /*<<< orphan*/  __rx_buffer ; 
 int /*<<< orphan*/  __rx_icr ; 
 int /*<<< orphan*/  __rx_inp ; 
 int /*<<< orphan*/  __rx_outp ; 
 int /*<<< orphan*/  __tm_icr ; 
 int /*<<< orphan*/  __tx_break ; 
 int /*<<< orphan*/  __tx_icr ; 
 int /*<<< orphan*/  __tx_xchar ; 
 int /*<<< orphan*/  __uart_state ; 
 int /*<<< orphan*/  __xmit_buffer ; 
 int /*<<< orphan*/  __xmit_head ; 
 int /*<<< orphan*/  __xmit_tail ; 
 int /*<<< orphan*/  _iobase ; 
 int /*<<< orphan*/  _tmicr ; 
 int /*<<< orphan*/  a0 ; 
 int /*<<< orphan*/  a1 ; 
 int /*<<< orphan*/  a2 ; 
 int /*<<< orphan*/  a3 ; 
 int /*<<< orphan*/  addr_limit ; 
 int /*<<< orphan*/  cpu ; 
 int /*<<< orphan*/  d0 ; 
 int /*<<< orphan*/  d1 ; 
 int /*<<< orphan*/  d2 ; 
 int /*<<< orphan*/  d3 ; 
 int /*<<< orphan*/  e0 ; 
 int /*<<< orphan*/  e1 ; 
 int /*<<< orphan*/  e2 ; 
 int /*<<< orphan*/  e3 ; 
 int /*<<< orphan*/  e4 ; 
 int /*<<< orphan*/  e5 ; 
 int /*<<< orphan*/  e6 ; 
 int /*<<< orphan*/  e7 ; 
 int /*<<< orphan*/  epsw ; 
 int /*<<< orphan*/  exec_domain ; 
 int /*<<< orphan*/  flags ; 
 int /*<<< orphan*/  handler ; 
 int /*<<< orphan*/  intr_flags ; 
 int /*<<< orphan*/  lar ; 
 int /*<<< orphan*/  lir ; 
 int /*<<< orphan*/  mcrh ; 
 int /*<<< orphan*/  mcrl ; 
 int /*<<< orphan*/  mcvf ; 
 int /*<<< orphan*/  mdr ; 
 int /*<<< orphan*/  mdrq ; 
 int /*<<< orphan*/  mn10300_serial_port ; 
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/  orig_d0 ; 
 int /*<<< orphan*/  pc ; 
 int /*<<< orphan*/  preempt_count ; 
 int /*<<< orphan*/  pt_regs ; 
 int /*<<< orphan*/  restart_block ; 
 int /*<<< orphan*/  rt_sigframe ; 
 int /*<<< orphan*/  rx_buffer ; 
 int /*<<< orphan*/  rx_icr ; 
 int /*<<< orphan*/  rx_inp ; 
 int /*<<< orphan*/  rx_outp ; 
 int /*<<< orphan*/  sigcontext ; 
 int /*<<< orphan*/  sp ; 
 int /*<<< orphan*/  task ; 
 int /*<<< orphan*/  thread_info ; 
 int /*<<< orphan*/  thread_struct ; 
 int /*<<< orphan*/  tx_break ; 
 int /*<<< orphan*/  tx_icr ; 
 int /*<<< orphan*/  tx_xchar ; 
 TYPE_3__ uart ; 
 int /*<<< orphan*/  uart_state ; 
 TYPE_2__ uc ; 
 int /*<<< orphan*/  uregs ; 
 int /*<<< orphan*/  usp ; 
 TYPE_1__ xmit ; 

void FUNC3(void)
{
	FUNC2(SIGCONTEXT_d0, sigcontext, d0);
	FUNC2(SIGCONTEXT_d1, sigcontext, d1);
	FUNC0();

	FUNC2(TI_task,			thread_info, task);
	FUNC2(TI_exec_domain,		thread_info, exec_domain);
	FUNC2(TI_flags,		thread_info, flags);
	FUNC2(TI_cpu,			thread_info, cpu);
	FUNC2(TI_preempt_count,	thread_info, preempt_count);
	FUNC2(TI_addr_limit,		thread_info, addr_limit);
	FUNC2(TI_restart_block,	thread_info, restart_block);
	FUNC0();

	FUNC2(REG_D0,			pt_regs, d0);
	FUNC2(REG_D1,			pt_regs, d1);
	FUNC2(REG_D2,			pt_regs, d2);
	FUNC2(REG_D3,			pt_regs, d3);
	FUNC2(REG_A0,			pt_regs, a0);
	FUNC2(REG_A1,			pt_regs, a1);
	FUNC2(REG_A2,			pt_regs, a2);
	FUNC2(REG_A3,			pt_regs, a3);
	FUNC2(REG_E0,			pt_regs, e0);
	FUNC2(REG_E1,			pt_regs, e1);
	FUNC2(REG_E2,			pt_regs, e2);
	FUNC2(REG_E3,			pt_regs, e3);
	FUNC2(REG_E4,			pt_regs, e4);
	FUNC2(REG_E5,			pt_regs, e5);
	FUNC2(REG_E6,			pt_regs, e6);
	FUNC2(REG_E7,			pt_regs, e7);
	FUNC2(REG_SP,			pt_regs, sp);
	FUNC2(REG_EPSW,		pt_regs, epsw);
	FUNC2(REG_PC,			pt_regs, pc);
	FUNC2(REG_LAR,			pt_regs, lar);
	FUNC2(REG_LIR,			pt_regs, lir);
	FUNC2(REG_MDR,			pt_regs, mdr);
	FUNC2(REG_MCVF,		pt_regs, mcvf);
	FUNC2(REG_MCRL,		pt_regs, mcrl);
	FUNC2(REG_MCRH,		pt_regs, mcrh);
	FUNC2(REG_MDRQ,		pt_regs, mdrq);
	FUNC2(REG_ORIG_D0,		pt_regs, orig_d0);
	FUNC2(REG_NEXT,		pt_regs, next);
	FUNC1(REG__END,		sizeof(struct pt_regs));
	FUNC0();

	FUNC2(THREAD_UREGS,		thread_struct, uregs);
	FUNC2(THREAD_PC,		thread_struct, pc);
	FUNC2(THREAD_SP,		thread_struct, sp);
	FUNC2(THREAD_A3,		thread_struct, a3);
	FUNC2(THREAD_USP,		thread_struct, usp);
	FUNC2(THREAD_FRAME,		thread_struct, __frame);
	FUNC0();

	FUNC1(CLONE_VM_asm,		CLONE_VM);
	FUNC1(CLONE_FS_asm,		CLONE_FS);
	FUNC1(CLONE_FILES_asm,		CLONE_FILES);
	FUNC1(CLONE_SIGHAND_asm,	CLONE_SIGHAND);
	FUNC1(CLONE_UNTRACED_asm,	CLONE_UNTRACED);
	FUNC1(SIGCHLD_asm,		SIGCHLD);
	FUNC0();

	FUNC2(EXEC_DOMAIN_handler,	exec_domain, handler);
	FUNC2(RT_SIGFRAME_sigcontext,	rt_sigframe, uc.uc_mcontext);

	FUNC1(PAGE_SIZE_asm,		PAGE_SIZE);

	FUNC2(__rx_buffer,		mn10300_serial_port, rx_buffer);
	FUNC2(__rx_inp,		mn10300_serial_port, rx_inp);
	FUNC2(__rx_outp,		mn10300_serial_port, rx_outp);
	FUNC2(__uart_state,		mn10300_serial_port, uart.state);
	FUNC2(__tx_xchar,		mn10300_serial_port, tx_xchar);
	FUNC2(__tx_break,		mn10300_serial_port, tx_break);
	FUNC2(__intr_flags,		mn10300_serial_port, intr_flags);
	FUNC2(__rx_icr,		mn10300_serial_port, rx_icr);
	FUNC2(__tx_icr,		mn10300_serial_port, tx_icr);
	FUNC2(__tm_icr,		mn10300_serial_port, _tmicr);
	FUNC2(__iobase,		mn10300_serial_port, _iobase);

	FUNC1(__UART_XMIT_SIZE,	UART_XMIT_SIZE);
	FUNC2(__xmit_buffer,		uart_state, xmit.buf);
	FUNC2(__xmit_head,		uart_state, xmit.head);
	FUNC2(__xmit_tail,		uart_state, xmit.tail);
}