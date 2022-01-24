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
struct stack_trace {scalar_t__ nr_entries; scalar_t__ max_entries; int /*<<< orphan*/ * entries; } ;
struct pt_regs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ULONG_MAX ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct pt_regs*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct stack_trace*) ; 
 int /*<<< orphan*/  save_stack_ops ; 

void FUNC1(struct pt_regs *regs, struct stack_trace *trace)
{
	FUNC0(current, regs, NULL, &save_stack_ops, trace);
	if (trace->nr_entries < trace->max_entries)
		trace->entries[trace->nr_entries++] = ULONG_MAX;
}