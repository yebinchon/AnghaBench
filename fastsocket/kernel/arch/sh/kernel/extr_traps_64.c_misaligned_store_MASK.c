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
struct pt_regs {scalar_t__ pc; scalar_t__* regs; } ;
typedef  scalar_t__ __u64 ;
typedef  int __u32 ;
typedef  int /*<<< orphan*/  __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  VERIFY_WRITE ; 
 scalar_t__ FUNC0 (void*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long,unsigned long) ; 
 int FUNC2 (struct pt_regs*,int,int,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,unsigned long) ; 
 scalar_t__ FUNC5 (struct pt_regs*) ; 

__attribute__((used)) static int FUNC6(struct pt_regs *regs,
			    __u32 opcode,
			    int displacement_not_indexed,
			    int width_shift)
{
	/* Return -1 for a fault, 0 for OK */
	int error;
	int srcreg;
	__u64 address;

	error = FUNC2(regs, opcode,
			displacement_not_indexed, width_shift, &address);
	if (error < 0) {
		return error;
	}

	srcreg = (opcode >> 4) & 0x3f;
	if (FUNC5(regs)) {
		__u64 buffer;

		if (!FUNC1(VERIFY_WRITE, (unsigned long) address, 1UL<<width_shift)) {
			return -1;
		}

		switch (width_shift) {
		case 1:
			*(__u16 *) &buffer = (__u16) regs->regs[srcreg];
			break;
		case 2:
			*(__u32 *) &buffer = (__u32) regs->regs[srcreg];
			break;
		case 3:
			buffer = regs->regs[srcreg];
			break;
		default:
			FUNC4("Unexpected width_shift %d in misaligned_store, PC=%08lx\n",
				width_shift, (unsigned long) regs->pc);
			break;
		}

		if (FUNC0((void *)(int)address, &buffer, (1 << width_shift)) > 0) {
			return -1; /* fault */
		}
	} else {
		/* kernel mode - we can take short cuts since if we fault, it's a genuine bug */
		__u64 val = regs->regs[srcreg];

		switch (width_shift) {
		case 1:
			FUNC3(address, val);
			break;
		case 2:
			asm ("stlo.l %1, 0, %0" : : "r" (val), "r" (address));
			asm ("sthi.l %1, 3, %0" : : "r" (val), "r" (address));
			break;
		case 3:
			asm ("stlo.q %1, 0, %0" : : "r" (val), "r" (address));
			asm ("sthi.q %1, 7, %0" : : "r" (val), "r" (address));
			break;

		default:
			FUNC4("Unexpected width_shift %d in misaligned_store, PC=%08lx\n",
				width_shift, (unsigned long) regs->pc);
			break;
		}
	}

	return 0;

}