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
struct thread_info {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ FUNC3 (struct thread_info*,unsigned long*) ; 

__attribute__((used)) static inline unsigned long FUNC4(struct thread_info *tinfo,
				unsigned long *stack, unsigned long ebp)
{
	unsigned long addr;

#ifdef CONFIG_FRAME_POINTER
	while (valid_stack_ptr(tinfo, (void *)ebp)) {
		addr = *(unsigned long *)(ebp + 4);
		printk("%08lx:  [<%08lx>]", ebp + 4, addr);
		print_symbol(" %s", addr);
		printk("\n");
		ebp = *(unsigned long *)ebp;
	}
#else
	while (FUNC3(tinfo, stack)) {
		addr = *stack;
		if (FUNC0(addr)) {
			FUNC2("%08lx:  [<%08lx>]", (unsigned long) stack, addr);
			FUNC1(" %s", addr);
			FUNC2("\n");
		}
		stack++;
	}
#endif
	return ebp;
}