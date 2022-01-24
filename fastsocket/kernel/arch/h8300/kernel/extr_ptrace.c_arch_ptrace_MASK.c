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
struct user {int dummy; } ;
struct task_struct {long exit_code; int /*<<< orphan*/  exit_state; TYPE_1__* mm; } ;
struct TYPE_2__ {unsigned long start_code; unsigned long start_data; unsigned long end_code; unsigned long end_data; } ;

/* Variables and functions */
 int EFAULT ; 
 int EIO ; 
 int /*<<< orphan*/  EXIT_ZOMBIE ; 
 long H8300_REGS_NO ; 
#define  PTRACE_CONT 140 
#define  PTRACE_DETACH 139 
#define  PTRACE_GETREGS 138 
#define  PTRACE_KILL 137 
#define  PTRACE_PEEKDATA 136 
#define  PTRACE_PEEKTEXT 135 
#define  PTRACE_PEEKUSR 134 
#define  PTRACE_POKEDATA 133 
#define  PTRACE_POKETEXT 132 
#define  PTRACE_POKEUSR 131 
#define  PTRACE_SETREGS 130 
#define  PTRACE_SINGLESTEP 129 
#define  PTRACE_SYSCALL 128 
 long PT_ORIG_ER0 ; 
 long SIGKILL ; 
 int /*<<< orphan*/  TIF_SYSCALL_TRACE ; 
 int /*<<< orphan*/  FUNC0 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct task_struct*,long,long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*) ; 
 unsigned long FUNC5 (struct task_struct*,int) ; 
 int FUNC6 (struct task_struct*,int,unsigned long) ; 
 int FUNC7 (struct task_struct*,long) ; 
 int FUNC8 (unsigned long,unsigned long*) ; 
 int FUNC9 (struct task_struct*,long,unsigned long*) ; 
 int /*<<< orphan*/  FUNC10 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (long) ; 
 int /*<<< orphan*/  FUNC12 (struct task_struct*) ; 

long FUNC13(struct task_struct *child, long request, long addr, long data)
{
	int ret;

	switch (request) {
		case PTRACE_PEEKTEXT: /* read word at location addr. */ 
		case PTRACE_PEEKDATA: {
			unsigned long tmp;

			ret = FUNC9(child, addr, &tmp);
			if (ret < 0)
				break ;
			ret = FUNC8(tmp, (unsigned long *) data);
			break ;
		}

	/* read the word at location addr in the USER area. */
		case PTRACE_PEEKUSR: {
			unsigned long tmp = 0;
			
			if ((addr & 3) || addr < 0 || addr >= sizeof(struct user)) {
				ret = -EIO;
				break ;
			}
			
		        ret = 0;  /* Default return condition */
			addr = addr >> 2; /* temporary hack. */

			if (addr < H8300_REGS_NO)
				tmp = FUNC5(child, addr);
			else {
				switch(addr) {
				case 49:
					tmp = child->mm->start_code;
					break ;
				case 50:
					tmp = child->mm->start_data;
					break ;
				case 51:
					tmp = child->mm->end_code;
					break ;
				case 52:
					tmp = child->mm->end_data;
					break ;
				default:
					ret = -EIO;
				}
			}
			if (!ret)
				ret = FUNC8(tmp,(unsigned long *) data);
			break ;
		}

      /* when I and D space are separate, this will have to be fixed. */
		case PTRACE_POKETEXT: /* write the word at location addr. */
		case PTRACE_POKEDATA:
			ret = FUNC1(child, addr, data);
			break;

		case PTRACE_POKEUSR: /* write the word at location addr in the USER area */
			if ((addr & 3) || addr < 0 || addr >= sizeof(struct user)) {
				ret = -EIO;
				break ;
			}
			addr = addr >> 2; /* temporary hack. */
			    
			if (addr == PT_ORIG_ER0) {
				ret = -EIO;
				break ;
			}
			if (addr < H8300_REGS_NO) {
				ret = FUNC6(child, addr, data);
				break ;
			}
			ret = -EIO;
			break ;
		case PTRACE_SYSCALL: /* continue and stop at next (return from) syscall */
		case PTRACE_CONT: { /* restart after signal. */
			ret = -EIO;
			if (!FUNC11(data))
				break ;
			if (request == PTRACE_SYSCALL)
				FUNC10(child, TIF_SYSCALL_TRACE);
			else
				FUNC0(child, TIF_SYSCALL_TRACE);
			child->exit_code = data;
			FUNC12(child);
			/* make sure the single step bit is not set. */
			FUNC3(child);
			ret = 0;
		}

/*
 * make the child exit.  Best I can do is send it a sigkill. 
 * perhaps it should be put in the status that it wants to 
 * exit.
 */
		case PTRACE_KILL: {

			ret = 0;
			if (child->exit_state == EXIT_ZOMBIE) /* already dead */
				break;
			child->exit_code = SIGKILL;
			FUNC3(child);
			FUNC12(child);
			break;
		}

		case PTRACE_SINGLESTEP: {  /* set the trap flag. */
			ret = -EIO;
			if (!FUNC11(data))
				break;
			FUNC0(child, TIF_SYSCALL_TRACE);
			child->exit_code = data;
			FUNC4(child);
			FUNC12(child);
			ret = 0;
			break;
		}

		case PTRACE_DETACH:	/* detach a process that was attached. */
			ret = FUNC7(child, data);
			break;

		case PTRACE_GETREGS: { /* Get all gp regs from the child. */
		  	int i;
			unsigned long tmp;
			for (i = 0; i < H8300_REGS_NO; i++) {
			    tmp = FUNC5(child, i);
			    if (FUNC8(tmp, (unsigned long *) data)) {
				ret = -EFAULT;
				break;
			    }
			    data += sizeof(long);
			}
			ret = 0;
			break;
		}

		case PTRACE_SETREGS: { /* Set all gp regs in the child. */
			int i;
			unsigned long tmp;
			for (i = 0; i < H8300_REGS_NO; i++) {
			    if (FUNC2(tmp, (unsigned long *) data)) {
				ret = -EFAULT;
				break;
			    }
			    FUNC6(child, i, tmp);
			    data += sizeof(long);
			}
			ret = 0;
			break;
		}

		default:
			ret = -EIO;
			break;
	}
	return ret;
}