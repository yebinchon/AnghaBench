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
struct pt_regs {int dummy; } ;
struct TYPE_2__ {int skip; int /*<<< orphan*/  max_entries; int /*<<< orphan*/  entries; scalar_t__ nr_entries; } ;
struct kmemcheck_error {TYPE_1__ trace; int /*<<< orphan*/  trace_entries; int /*<<< orphan*/  regs; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KMEMCHECK_ERROR_BUG ; 
 struct kmemcheck_error* FUNC1 () ; 
 int /*<<< orphan*/  kmemcheck_tasklet ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct pt_regs*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct pt_regs *regs)
{
	struct kmemcheck_error *e;

	e = FUNC1();
	if (!e)
		return;

	e->type = KMEMCHECK_ERROR_BUG;

	FUNC2(&e->regs, regs, sizeof(*regs));

	e->trace.nr_entries = 0;
	e->trace.entries = e->trace_entries;
	e->trace.max_entries = FUNC0(e->trace_entries);
	e->trace.skip = 1;
	FUNC3(&e->trace);

	FUNC4(&kmemcheck_tasklet);
}