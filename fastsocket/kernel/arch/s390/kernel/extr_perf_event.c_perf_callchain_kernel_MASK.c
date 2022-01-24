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
struct stack_frame {unsigned long back_chain; } ;
struct pt_regs {unsigned long* gprs; } ;
struct perf_callchain_entry {int dummy; } ;
struct TYPE_2__ {scalar_t__ thread_info; scalar_t__ async_stack; } ;

/* Variables and functions */
 scalar_t__ ASYNC_SIZE ; 
 TYPE_1__ S390_lowcore ; 
 scalar_t__ THREAD_SIZE ; 
 unsigned long FUNC0 (struct perf_callchain_entry*,unsigned long,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (struct pt_regs*) ; 

void FUNC2(struct perf_callchain_entry *entry,
			   struct pt_regs *regs)
{
	unsigned long head;
	struct stack_frame *head_sf;

	if (FUNC1(regs))
		return;

	head = regs->gprs[15];
	head_sf = (struct stack_frame *) head;

	if (!head_sf || !head_sf->back_chain)
		return;

	head = head_sf->back_chain;
	head = FUNC0(entry, head, S390_lowcore.async_stack - ASYNC_SIZE,
			     S390_lowcore.async_stack);

	FUNC0(entry, head, S390_lowcore.thread_info,
		      S390_lowcore.thread_info + THREAD_SIZE);
}