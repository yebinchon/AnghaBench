#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct pt_regs {scalar_t__ pc; int /*<<< orphan*/  sr; } ;
typedef  scalar_t__ __u64 ;
typedef  int __u32 ;
struct TYPE_7__ {int* fp_regs; } ;
struct TYPE_8__ {TYPE_1__ hard; } ;
struct TYPE_9__ {TYPE_2__ fpu; } ;
struct TYPE_10__ {TYPE_3__ thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  SR_FD ; 
 int /*<<< orphan*/  VERIFY_READ ; 
 scalar_t__ FUNC0 (scalar_t__*,void const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long,unsigned long) ; 
 TYPE_4__* current ; 
 int /*<<< orphan*/  FUNC2 (char*,struct pt_regs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (struct pt_regs*,int,int,int,scalar_t__*) ; 
 TYPE_4__* last_task_used_math ; 
 int /*<<< orphan*/  FUNC6 (char*,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,struct pt_regs*) ; 
 scalar_t__ FUNC8 (struct pt_regs*) ; 

__attribute__((used)) static int FUNC9(struct pt_regs *regs,
			   __u32 opcode,
			   int displacement_not_indexed,
			   int width_shift,
			   int do_paired_load)
{
	/* Return -1 for a fault, 0 for OK */
	int error;
	int destreg;
	__u64 address;

	error = FUNC5(regs, opcode,
			displacement_not_indexed, width_shift, &address);
	if (error < 0) {
		return error;
	}

	destreg = (opcode >> 4) & 0x3f;
	if (FUNC8(regs)) {
		__u64 buffer;
		__u32 buflo, bufhi;

		if (!FUNC1(VERIFY_READ, (unsigned long) address, 1UL<<width_shift)) {
			return -1;
		}

		if (FUNC0(&buffer, (const void *)(int)address, (1 << width_shift)) > 0) {
			return -1; /* fault */
		}
		/* 'current' may be the current owner of the FPU state, so
		   context switch the registers into memory so they can be
		   indexed by register number. */
		if (last_task_used_math == current) {
			FUNC4();
			FUNC7(current, regs);
			FUNC3();
			last_task_used_math = NULL;
			regs->sr |= SR_FD;
		}

		buflo = *(__u32*) &buffer;
		bufhi = *(1 + (__u32*) &buffer);

		switch (width_shift) {
		case 2:
			current->thread.fpu.hard.fp_regs[destreg] = buflo;
			break;
		case 3:
			if (do_paired_load) {
				current->thread.fpu.hard.fp_regs[destreg] = buflo;
				current->thread.fpu.hard.fp_regs[destreg+1] = bufhi;
			} else {
#if defined(CONFIG_CPU_LITTLE_ENDIAN)
				current->thread.fpu.hard.fp_regs[destreg] = bufhi;
				current->thread.fpu.hard.fp_regs[destreg+1] = buflo;
#else
				current->thread.fpu.hard.fp_regs[destreg] = buflo;
				current->thread.fpu.hard.fp_regs[destreg+1] = bufhi;
#endif
			}
			break;
		default:
			FUNC6("Unexpected width_shift %d in misaligned_fpu_load, PC=%08lx\n",
				width_shift, (unsigned long) regs->pc);
			break;
		}
		return 0;
	} else {
		FUNC2 ("Misaligned FPU load inside kernel", regs, 0);
		return -1;
	}


}