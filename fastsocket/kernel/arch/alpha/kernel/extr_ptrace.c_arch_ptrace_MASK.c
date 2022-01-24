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
typedef  int /*<<< orphan*/  tmp ;
struct task_struct {long exit_code; int /*<<< orphan*/  exit_state; } ;
struct TYPE_2__ {int bpt_nsaved; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  DBG_MEM ; 
 long EIO ; 
 int /*<<< orphan*/  EXIT_ZOMBIE ; 
#define  PTRACE_CONT 137 
#define  PTRACE_KILL 136 
#define  PTRACE_PEEKDATA 135 
#define  PTRACE_PEEKTEXT 134 
#define  PTRACE_PEEKUSR 133 
#define  PTRACE_POKEDATA 132 
#define  PTRACE_POKETEXT 131 
#define  PTRACE_POKEUSR 130 
#define  PTRACE_SINGLESTEP 129 
#define  PTRACE_SYSCALL 128 
 long SIGKILL ; 
 int /*<<< orphan*/  TIF_SYSCALL_TRACE ; 
 size_t FUNC1 (struct task_struct*,long,unsigned long*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 long FUNC4 (struct task_struct*,long,long) ; 
 long FUNC5 (struct task_struct*,long) ; 
 int /*<<< orphan*/  FUNC6 (struct task_struct*) ; 
 long FUNC7 (struct task_struct*,long,long,long) ; 
 long FUNC8 (struct task_struct*,long,long) ; 
 int /*<<< orphan*/  FUNC9 (struct task_struct*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC10 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC11 (long) ; 
 int /*<<< orphan*/  FUNC12 (struct task_struct*) ; 

long FUNC13(struct task_struct *child, long request, long addr, long data)
{
	unsigned long tmp;
	size_t copied;
	long ret;

	switch (request) {
	/* When I and D space are separate, these will need to be fixed.  */
	case PTRACE_PEEKTEXT: /* read word at location addr. */
	case PTRACE_PEEKDATA:
		copied = FUNC1(child, addr, &tmp, sizeof(tmp), 0);
		ret = -EIO;
		if (copied != sizeof(tmp))
			break;
		
		FUNC3();
		ret = tmp;
		break;

	/* Read register number ADDR. */
	case PTRACE_PEEKUSR:
		FUNC3();
		ret = FUNC5(child, addr);
		FUNC0(DBG_MEM, ("peek $%ld->%#lx\n", addr, ret));
		break;

	/* When I and D space are separate, this will have to be fixed.  */
	case PTRACE_POKETEXT: /* write the word at location addr. */
	case PTRACE_POKEDATA:
		ret = FUNC4(child, addr, data);
		break;

	case PTRACE_POKEUSR: /* write the specified register */
		FUNC0(DBG_MEM, ("poke $%ld<-%#lx\n", addr, data));
		ret = FUNC8(child, addr, data);
		break;

	case PTRACE_SYSCALL:
		/* continue and stop at next (return from) syscall */
	case PTRACE_CONT:    /* restart after signal. */
		ret = -EIO;
		if (!FUNC11(data))
			break;
		if (request == PTRACE_SYSCALL)
			FUNC9(child, TIF_SYSCALL_TRACE);
		else
			FUNC2(child, TIF_SYSCALL_TRACE);
		child->exit_code = data;
		/* make sure single-step breakpoint is gone. */
		FUNC6(child);
		FUNC12(child);
		ret = 0;
		break;

	/*
	 * Make the child exit.  Best I can do is send it a sigkill.
	 * perhaps it should be put in the status that it wants to
	 * exit.
	 */
	case PTRACE_KILL:
		ret = 0;
		if (child->exit_state == EXIT_ZOMBIE)
			break;
		child->exit_code = SIGKILL;
		/* make sure single-step breakpoint is gone. */
		FUNC6(child);
		FUNC12(child);
		break;

	case PTRACE_SINGLESTEP:  /* execute single instruction. */
		ret = -EIO;
		if (!FUNC11(data))
			break;
		/* Mark single stepping.  */
		FUNC10(child)->bpt_nsaved = -1;
		FUNC2(child, TIF_SYSCALL_TRACE);
		child->exit_code = data;
		FUNC12(child);
		/* give it a chance to run. */
		ret = 0;
		break;

	default:
		ret = FUNC7(child, request, addr, data);
		break;
	}
	return ret;
}