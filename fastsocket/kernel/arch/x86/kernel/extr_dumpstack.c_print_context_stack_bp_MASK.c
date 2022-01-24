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
struct stacktrace_ops {int /*<<< orphan*/  (* address ) (void*,unsigned long,int) ;} ;
struct stack_frame {unsigned long return_address; struct stack_frame* next_frame; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,void*,struct stacktrace_ops const*,struct thread_info*,int*) ; 
 int /*<<< orphan*/  FUNC2 (void*,unsigned long,int) ; 
 scalar_t__ FUNC3 (struct thread_info*,unsigned long*,int,unsigned long*) ; 

unsigned long
FUNC4(struct thread_info *tinfo,
		       unsigned long *stack, unsigned long bp,
		       const struct stacktrace_ops *ops, void *data,
		       unsigned long *end, int *graph)
{
	struct stack_frame *frame = (struct stack_frame *)bp;
	unsigned long *ret_addr = &frame->return_address;

	while (FUNC3(tinfo, ret_addr, sizeof(*ret_addr), end)) {
		unsigned long addr = *ret_addr;

		if (!FUNC0(addr))
			break;

		ops->address(data, addr, 1);
		frame = frame->next_frame;
		ret_addr = &frame->return_address;
		FUNC1(addr, data, ops, tinfo, graph);
	}

	return (unsigned long)frame;
}