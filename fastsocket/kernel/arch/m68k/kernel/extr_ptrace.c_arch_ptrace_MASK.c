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
struct user_m68kfp_struct {int dummy; } ;
struct TYPE_2__ {unsigned long* fp; } ;
struct task_struct {long exit_code; TYPE_1__ thread; int /*<<< orphan*/  exit_state; } ;

/* Variables and functions */
 int EFAULT ; 
 long EIO ; 
 int /*<<< orphan*/  EXIT_ZOMBIE ; 
 int /*<<< orphan*/  FPU_IS_EMU ; 
#define  PTRACE_CONT 141 
#define  PTRACE_GETFPREGS 140 
#define  PTRACE_GETREGS 139 
#define  PTRACE_KILL 138 
#define  PTRACE_PEEKDATA 137 
#define  PTRACE_PEEKTEXT 136 
#define  PTRACE_PEEKUSR 135 
#define  PTRACE_POKEDATA 134 
#define  PTRACE_POKETEXT 133 
#define  PTRACE_POKEUSR 132 
#define  PTRACE_SETFPREGS 131 
#define  PTRACE_SETREGS 130 
#define  PTRACE_SINGLESTEP 129 
#define  PTRACE_SYSCALL 128 
 long PT_SR ; 
 long SIGKILL ; 
 long SR_MASK ; 
 int /*<<< orphan*/  TIF_DELAYED_TRACE ; 
 int /*<<< orphan*/  TIF_SYSCALL_TRACE ; 
 int TRACE_BITS ; 
 int /*<<< orphan*/  FUNC0 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (long**,void*,int) ; 
 int /*<<< orphan*/  FUNC2 (void*,long**,int) ; 
 int FUNC3 (struct task_struct*,long,long) ; 
 int FUNC4 (struct task_struct*,long,long) ; 
 long FUNC5 (struct task_struct*,long) ; 
 int FUNC6 (unsigned long,unsigned long*) ; 
 int FUNC7 (struct task_struct*,long,long,long) ; 
 int /*<<< orphan*/  FUNC8 (struct task_struct*,int,unsigned long) ; 
 int FUNC9 (unsigned long,unsigned long*) ; 
 int /*<<< orphan*/  FUNC10 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC12 (long) ; 
 int /*<<< orphan*/  FUNC13 (struct task_struct*) ; 

long FUNC14(struct task_struct *child, long request, long addr, long data)
{
	unsigned long tmp;
	int i, ret = 0;

	switch (request) {
	/* when I and D space are separate, these will need to be fixed. */
	case PTRACE_PEEKTEXT:	/* read word at location addr. */
	case PTRACE_PEEKDATA:
		ret = FUNC3(child, addr, data);
		break;

	/* read the word at location addr in the USER area. */
	case PTRACE_PEEKUSR:
		if (addr & 3)
			goto out_eio;
		addr >>= 2;	/* temporary hack. */

		if (addr >= 0 && addr < 19) {
			tmp = FUNC5(child, addr);
			if (addr == PT_SR)
				tmp >>= 16;
		} else if (addr >= 21 && addr < 49) {
			tmp = child->thread.fp[addr - 21];
			/* Convert internal fpu reg representation
			 * into long double format
			 */
			if (FPU_IS_EMU && (addr < 45) && !(addr % 3))
				tmp = ((tmp & 0xffff0000) << 15) |
				      ((tmp & 0x0000ffff) << 16);
		} else
			break;
		ret = FUNC9(tmp, (unsigned long *)data);
		break;

	/* when I and D space are separate, this will have to be fixed. */
	case PTRACE_POKETEXT:	/* write the word at location addr. */
	case PTRACE_POKEDATA:
		ret = FUNC4(child, addr, data);
		break;

	case PTRACE_POKEUSR:	/* write the word at location addr in the USER area */
		if (addr & 3)
			goto out_eio;
		addr >>= 2;	/* temporary hack. */

		if (addr == PT_SR) {
			data &= SR_MASK;
			data <<= 16;
			data |= FUNC5(child, PT_SR) & ~(SR_MASK << 16);
		} else if (addr >= 0 && addr < 19) {
			if (FUNC8(child, addr, data))
				goto out_eio;
		} else if (addr >= 21 && addr < 48) {
			/* Convert long double format
			 * into internal fpu reg representation
			 */
			if (FPU_IS_EMU && (addr < 45) && !(addr % 3)) {
				data = (unsigned long)data << 15;
				data = (data & 0xffff0000) |
				       ((data & 0x0000ffff) >> 1);
			}
			child->thread.fp[addr - 21] = data;
		} else
			goto out_eio;
		break;

	case PTRACE_SYSCALL:	/* continue and stop at next (return from) syscall */
	case PTRACE_CONT:	/* restart after signal. */
		if (!FUNC12(data))
			goto out_eio;

		if (request == PTRACE_SYSCALL)
			FUNC10(child, TIF_SYSCALL_TRACE);
		else
			FUNC0(child, TIF_SYSCALL_TRACE);
		child->exit_code = data;
		FUNC11(child);
		FUNC13(child);
		break;

	/*
	 * make the child exit.  Best I can do is send it a sigkill.
	 * perhaps it should be put in the status that it wants to
	 * exit.
	 */
	case PTRACE_KILL:
		if (child->exit_state == EXIT_ZOMBIE) /* already dead */
			break;
		child->exit_code = SIGKILL;
		FUNC11(child);
		FUNC13(child);
		break;

	case PTRACE_SINGLESTEP:	/* set the trap flag. */
		if (!FUNC12(data))
			goto out_eio;

		FUNC0(child, TIF_SYSCALL_TRACE);
		tmp = FUNC5(child, PT_SR) | (TRACE_BITS << 16);
		FUNC8(child, PT_SR, tmp);
		FUNC10(child, TIF_DELAYED_TRACE);

		child->exit_code = data;
		/* give it a chance to run. */
		FUNC13(child);
		break;

	case PTRACE_GETREGS:	/* Get all gp regs from the child. */
		for (i = 0; i < 19; i++) {
			tmp = FUNC5(child, i);
			if (i == PT_SR)
				tmp >>= 16;
			ret = FUNC9(tmp, (unsigned long *)data);
			if (ret)
				break;
			data += sizeof(long);
		}
		break;

	case PTRACE_SETREGS:	/* Set all gp regs in the child. */
		for (i = 0; i < 19; i++) {
			ret = FUNC6(tmp, (unsigned long *)data);
			if (ret)
				break;
			if (i == PT_SR) {
				tmp &= SR_MASK;
				tmp <<= 16;
				tmp |= FUNC5(child, PT_SR) & ~(SR_MASK << 16);
			}
			FUNC8(child, i, tmp);
			data += sizeof(long);
		}
		break;

	case PTRACE_GETFPREGS:	/* Get the child FPU state. */
		if (FUNC2((void *)data, &child->thread.fp,
				 sizeof(struct user_m68kfp_struct)))
			ret = -EFAULT;
		break;

	case PTRACE_SETFPREGS:	/* Set the child FPU state. */
		if (FUNC1(&child->thread.fp, (void *)data,
				   sizeof(struct user_m68kfp_struct)))
			ret = -EFAULT;
		break;

	default:
		ret = FUNC7(child, request, addr, data);
		break;
	}

	return ret;
out_eio:
	return -EIO;
}